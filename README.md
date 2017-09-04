# FiletypeDetection
You can read more about the project on its corresponding JIRA issue. [File Byte Histogram Machine Learning Classification](https://issues.apache.org/jira/browse/TIKA-1582)

This code is used to generate a model for Tika for Content based mime detection with byte frequency histograms. 

# Steps
 1. Identify the type of file you want Tika to detect using this method.
 2. Collect files of the type and also files which are not of this type.
 3. Create three datasets
     a. Training
     b. Testing
     c. Validation 
    The dimensionality for each set is as follows.
    ```m*(256+1)```, where m indicates the number of training/validation/test examples; 256 is the size of features (i.e. byte     frequency histogram which is not preprocessed with a companding function) + 1 for the labeled output.
 4. These can be generated as csv files. 
 5. Run main.r
 6. The output of main.r is tika.model which can be used in Tika.

For more detailed documentation, download the [Documenation_NNModelIntegrationWithTika.docx](http://github.com/USCDataScience/filetypeDetection/tree/master/Documenation_NNModelIntegrationWithTika.docx) in this project.


# Developers: 
* [Luke Liush, USC](http://github.com/LukeLiush)
* [Chris Mattmann, USC & NASA JPL](http://sunset.usc.edu/~mattmann/)


