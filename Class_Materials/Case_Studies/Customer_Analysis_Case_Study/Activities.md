# Activities List
- It is highly encouraged to work in a group of two students for the lab of this case study.
- <b>Important: for Activity 1, Activity 2 and  Activity 3 , please use the files [file1.csv](./Data/file1.csv), [file2.csv](./Data/file2.csv) and [file3.csv](./Data/file3.csv) from the [Data](./Data) folder.</b>
### Activity 1 (Monday)
- Aggregate the data into one Data Frame using Pandas. Pay attention that files may have different names for the same column. Therefore, make sure that you unify the columns names before concatenating them. 
- Standardizing header names
- Removing duplicates
- Deleting and rearranging columns – delete the column "customer" as it is only a unique identifier for each row of data
- Working with data types – Check the data types of all the columns and fix the incorrect ones (for ex. customer lifetime value and number of open complaints ). Hint: remove the percentage from the customer lifetime value and truncate it to an integer value.
- clean the number of open complaints and extract the middle number which is changing between records.
- Filtering data and Correcting typos – Filter the data in state and gender column to standardize the texts in those columns

### Activity 2 (Tuesday)
- Replacing null values – Replace missing values with means of the column (for numerical columns). Pay attention that the Income feature for instance has 0s which are equivalent to null values. (We assume here that there is no such income with 0 as it refers to missing values)
Hint: numpy.nan is considered of float64 data type.
- Bucketing the data - Write a function to replace column "State" to different zones. California as West Region, Oregon as North West, Washington as East, and Arizona and Nevada as Central
- (Optional) In the column `Vehicle Class`, merge the two categories `Luxury SUV` and `Luxury Car` into one category named `Luxury Vehicle`  
- (Optional) Removing outliers using 1.5*IQR technique for all numerical columns.
- (Optional) Standardizing the data – Use string functions to standardize the text data (lower case)

<b>Important: for Activity 3 and Activity 4 , please use the [file Data_Marketing_Customer_Analysis_Round3.csv](./Data/Data_Marketing_Customer_Analysis_Round3.csv) from the [Data](./Data) folder.</b>

### Activity 3 (Wednesday)
As a reminder the objective of this study is to predict the `total claim amount` of a customer and study/investigate the impact of the factors (input features) on the target variable(`total claim amount`). That means in your exploratory data analysis, you have to look for patterns in this data that show interesting relationships among the input features as well as with relation to the target feature.
- Get the numeric data into a dataframe called `numerical` and categorical columns in a dataframe called `categorical`.
(You can use "np.number" and "object" to select the numerical data types and categorical data types respectively)
- Now we will try to check the normality of the numerical variables visually
  - Use the Seaborn library to construct distribution plots for the numerical variables
  - Use the Matplotlib library to construct histograms.
  - Do the distributions for different numerical variables look like a normal distribution? 
- For the numerical variables, check for correlation between the input features. Note: this does not include the target feature.
- Plot the Correlation Heatmap.
- (Optional): Drop one of the two features that show a high correlation between them (greater than 0.9). If there is no pair of features that have a high correlation, then do not drop any features.

### Activity 4 (Thursday)

- Show a plot of the total number of responses.
- Show a plot of the response by the sales channel.
- Show a plot of the response by the total claim amount.
- Show a plot of the response by income.
- (Optional) plot any interesting findings/insights(minimum three) that describe some interesting facts about your data set and its input variables as well as relationships with the target feature.
- Clean your notebook and make it readable and presentable with a good documentation that summarizes the Data Cleaning, Exploration(including plots), Steps that you have performed.
