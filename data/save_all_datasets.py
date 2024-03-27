
import pandas as pd
import numpy as np
import sklearn.datasets
from sklearn.preprocessing import QuantileTransformer
import subprocess

gTypes = {}

def generate_embedded_dataset(src_filename):
    # src_filename = data/small/adult_small.csv
    (dirname, categ, basename) = src_filename.split("/")
    tgt_filename = dirname + "/embedded_csv/" + basename.replace(".csv", ".i")
    result = subprocess.run(["xxd", "-i", src_filename], capture_output=True)
    lOutput = result.stdout
    # For embedded devices:  'unsigned char' => 'const char'
    lOutput = lOutput.decode()
    lOutput = lOutput.replace("unsigned char ", "const char ")
    with open(tgt_filename, "w") as outfile:
        outfile.write(lOutput)

def array_to_cpp(X, quote = False):
    lQuote = '"' if( quote ) else ""
    result = lQuote + str(X[0]) + lQuote;
    for i in range(1,len(X)):
        if((i % 20) == 0):
            result = result + ",\n\t\t" + lQuote + str(X[i]) + lQuote
        else:
            result = result + ", " + lQuote + str(X[i]) + lQuote
    if(len(X) <= 20):
        result = "{ " + result + " }"
    else:
        result = "{\n\t\t" + result + "\n\t}"        
    return result
        

def generate_embedded_dataset_parsed(src_filename):
    # src_filename = data/small/adult_small.csv
    (dirname, categ, basename) = src_filename.split("/")
    ds_name = basename.replace(".csv", "")
    tgt_filename = dirname + "/embedded/" + basename.replace(".csv", ".i")
    df = pd.read_csv(src_filename)
    cols = [x for x in df.columns]
    X = df[cols[:-1]].values
    y = df[cols[-1]].values
    (lFeatureType, lTgtType) = gTypes.get(ds_name.split("_")[0], ("float", "double"))
    print("DATASET_FEATURE_TARGET_TYPES", ds_name, ds_name.split("_")[0], (lFeatureType, lTgtType))
    quote_tgt = (lTgtType == "std::string")
    ds_name = ds_name.upper()
    N = df.shape[0]
    with open(tgt_filename, "w") as outfile:
        outfile.write("#include <vector>\n\n")
        outfile.write("using EMBEDDED_FEATURE_TYPE = " + lFeatureType + ";\n")
        outfile.write("using EMBEDDED_TARGET_TYPE = " + lTgtType + ";\n\n")    
        outfile.write("#define EMBEDDED_NB_ROWS " + str(X.shape[0]) + "\n\n")
        outfile.write("#define EMBEDDED_NB_FEATURES " + str(X.shape[1]) + "\n\n")
        outfile.write("using tEmbeddedFeatureVector = EMBEDDED_FEATURE_TYPE[ EMBEDDED_NB_FEATURES ];\n\n")        
        outfile.write("struct sEMBEDDED_X_Y {\n")    
        outfile.write("\ttEmbeddedFeatureVector X;\n")    
        outfile.write("\tEMBEDDED_TARGET_TYPE y;\n};\n\n")    
        X_output = "static const std::vector<sEMBEDDED_X_Y> gEMBEDDED_DATASET {\n"
        outfile.write(X_output)    
        for row in range(N):
            y_i = str(y[row])
            if(quote_tgt):
                y_i = '"' +  y_i + '"'
            X_output = "\t{ .X = " + array_to_cpp(X[row, :]) + ", .y = " + y_i + " }"
            if((row +1) < N):
                X_output = X_output + ",\n"
            else:
                X_output = X_output + "\n"
                
            outfile.write(X_output)    
        outfile.write("}; // eof gEMBEDDED_DATASET\n")    
                    

def save_dataset_flavors(ds_name, X, y, feature_names):
    print("SAVE_DATASET_FLAVORS", ds_name, X.shape, y.shape)
    qt = QuantileTransformer(n_quantiles=10, random_state=0)
    X_qt = qt.fit_transform(X)
    print(X_qt.dtype)
    X_qt[np.isnan(X_qt)] = 0.5 # median-based missing imputation.
    X_qt = X_qt.round(3)
    X_qt = X_qt * 10
    X_qt = X_qt.astype(int)

    df = pd.DataFrame(X , columns = feature_names)
    df = df.fillna(0)
    df["target"] = y
    df.to_csv("data/original/" + ds_name + ".csv", index= False);
    df.sample(n=64, random_state=1789).to_csv("data/small/" + ds_name + "_small.csv", index= False);
    df.sample(n=16, random_state=1789).to_csv("data/tiny/" + ds_name + "_tiny.csv", index= False);
    df.head(512).to_csv("data/medium/" + ds_name + "_medium.csv", index= False);
    df.sample(n=df.shape[0] // 8, random_state=1789).to_csv("data/sampled/" + ds_name + "_sampled.csv", index= False);
        
    df = pd.DataFrame(X_qt , columns = feature_names)
    df["target"] = y
    df.to_csv("data/quantized/" + ds_name + "_quantized.csv", index= False);

    generate_embedded_dataset("data/small/" + ds_name + "_small.csv");
    generate_embedded_dataset("data/tiny/" + ds_name + "_tiny.csv");
    generate_embedded_dataset("data/medium/" + ds_name + "_medium.csv");
    generate_embedded_dataset("data/original/" + ds_name + ".csv"); #  too large ??

    generate_embedded_dataset_parsed("data/small/" + ds_name + "_small.csv");
    generate_embedded_dataset_parsed("data/tiny/" + ds_name + "_tiny.csv");
    generate_embedded_dataset_parsed("data/medium/" + ds_name + "_medium.csv");
    generate_embedded_dataset_parsed("data/original/" + ds_name + ".csv"); #  too large ??

def save_iris_quantized():
    from sklearn.datasets import load_iris
    iris = load_iris()
    X = iris.data
    y = iris.target
    feature_names = iris.feature_names
    gTypes["iris"] = ("float", "int")
    save_dataset_flavors("iris", X, y, feature_names)

def save_digits_quantized():
    from sklearn.datasets import load_digits
    digits = load_digits()
    X = digits.data
    y = digits.target
    X = X.astype(np.int8)
    gTypes["digits"] = ("char", "int")

    feature_names = digits.feature_names

    save_dataset_flavors("digits", X, y, feature_names)


def save_census_quantized():
    from sklearn.datasets import fetch_openml
    gTypes["census"] = ("float", "std::string")
    census = fetch_openml(name="adult")
    X = census.data
    y = census.target
    X1 = X.copy();
    print(X1.columns)
    non_numerical_cols = ["workclass", "education","marital-status","occupation","relationship","race","sex", "native-country"]
    for col in non_numerical_cols:
        X1[col] = 0.0;
    print(X1.values)
    for col in X1.columns:
        X1[col] = X1[col].astype(float)
    X1.info()
    print(X1.values)

    feature_names = census.feature_names
    save_dataset_flavors("census", X1, y, feature_names)


def save_census_one_hot():
    from sklearn.preprocessing import OneHotEncoder
    from sklearn.datasets import fetch_openml
    gTypes["census"] = ("float", "std::string")
    census = fetch_openml(name="adult")
    y = census.target
    X = census.data
    non_numerical_cols = ["workclass", "education","marital-status","occupation","relationship","race","sex", "native-country"]
    X_hot = pd.DataFrame();
    feature_names = []
    for col in X.columns:
        if(col in non_numerical_cols):
            X1 = X[col].values.reshape(-1, 1)
            X1 = np.ascontiguousarray(X1)
            enc = OneHotEncoder(handle_unknown='ignore', sparse_output=False, drop='if_binary', min_frequency=5, max_categories=7)
            X2 = enc.fit_transform(X1);                
            feature_names_col = enc.get_feature_names_out()
            print(col, feature_names_col)
            for c in range(X2.shape[1]):
                name = feature_names_col[c]
                name = name.replace("x0_", col + "_")
                X_hot[name] = X2[:,c]
        else:
            X_hot[col] = X[col]
    feature_names = X_hot.columns
    print(feature_names)
    save_dataset_flavors("census_one_hot", X_hot.values, y, feature_names)


def save_california_housing_quantized():
    from sklearn.datasets import fetch_openml
    california_housing = fetch_openml(name="california_housing")
    X = california_housing.data
    y = california_housing.target

    print(X.columns)
    X1 = X.copy();
    print(X1.columns)
    non_numerical_cols = ["ocean_proximity"]
    for col in non_numerical_cols:
        X1[col] = 0.0;
    print(X1.values)
    for col in X1.columns:
        X1[col] = X1[col].astype(float)
    X1.info()
    print(X1.values)
    gTypes["california_housing"] = ("float", "double")
    
    feature_names = california_housing.feature_names
    save_dataset_flavors("california_housing", X1, y, feature_names)

    
def save_diabetes_quantized():
    from sklearn.datasets import load_diabetes
    diabetes = load_diabetes()
    X = diabetes.data
    y = diabetes.target
    feature_names = diabetes.feature_names
    gTypes["diabetes"] = ("float", "double")
    
    save_dataset_flavors("diabetes", X, y, feature_names)
    
gDatasets = {}
gDatasets["BreastCancer"] = sklearn.datasets.load_breast_cancer();
gDatasets["BinaryClass_10"] = sklearn.datasets.make_classification(
    n_samples=1024, n_classes=2, n_features=10, random_state=1789);
gDatasets["FourClass_10"] = sklearn.datasets.make_classification(
    n_samples=1024, n_classes=4, n_features=10, n_informative=4, random_state=1789);
gDatasets["BinaryClass_100"] = sklearn.datasets.make_classification(
    n_samples=1024, n_classes=2, n_features=100, random_state=1789);
gDatasets["FourClass_100"] = sklearn.datasets.make_classification(
    n_samples=1024, n_classes=4, n_informative=10, n_features=100, random_state=1789);
    
gDatasets["freidman1"] = sklearn.datasets.make_friedman1(random_state=1789)
gDatasets["freidman2"] = sklearn.datasets.make_friedman2(random_state=1789)
gDatasets["freidman3"] = sklearn.datasets.make_friedman3(random_state=1789)
gDatasets["RandomReg_10"] = sklearn.datasets.make_regression(n_samples=1024, n_features=10, random_state=1789);
gDatasets["RandomReg_100"] = sklearn.datasets.make_regression(n_samples=1024, n_features=100, random_state=1789);
gDatasets["Two_Blobs"] = sklearn.datasets.make_blobs(
    n_samples=1024, centers=2, random_state=1789, cluster_std=0.40)
gDatasets["Three_Blobs"] = sklearn.datasets.make_blobs(
    n_samples=1024, centers=3, random_state=1789, cluster_std=0.40)
gDatasets["Four_Blobs"] = sklearn.datasets.make_blobs(
    n_samples=1024, centers=4, random_state=1789, cluster_std=0.40)

def save_generated_dataset_quantized(ds_name):
    lDataset = gDatasets[ds_name]
    if(type(lDataset) == tuple):
        (X, y) = lDataset
        feature_names = ["X_" + str(i) for i in range(X.shape[1])]
    else:
        X = lDataset.data
        y = lDataset.target
        feature_names = lDataset.feature_names

    gTypes[ds_name.split("_")[0]] = ("float", "double")
    if(y.dtype == "np.int64"):
        gTypes[ds_name.split("_")[0]] = ("float", "int")

    save_dataset_flavors(ds_name, X, y, feature_names)



save_iris_quantized()
save_digits_quantized()
save_census_quantized()
save_census_one_hot()
save_california_housing_quantized()
save_diabetes_quantized()

for ds_name in gDatasets.keys():
    save_generated_dataset_quantized(ds_name)
    
