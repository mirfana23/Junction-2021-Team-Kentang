# Junction-2021-Team-Kentang
This is our repository for Junction 2021 submission  
We introduce you to Aeer! Plan your Budget while Saving Water

## Description
The repository that we have provided contains all the files used in the creation of this project, starting from the parsed version of the JSON database up to the application used as a prototype. The folders of the repository are layouted as follows : 
- db.json
- Forecast_code_and_result
- data
- app
- app_new
- app_new_new
- parse.py
- requirements.txt


### Data Parsing
db.json as the main database file is first parsed with parse.py, creating the folder data with easy-to-read versions of the data. The folders inside data are named with the following format : `apartment-index_number-of-people`. Each folder inside data contain 5 files each detailing different products used. 

### App Files
There are three tries corresponding to the mobile application made with flutter in the repository. `app` contains the foremost and simplest rendition of the app. `app_new` contains the second rendition of the application while `app_new_new` is the third and final rendition of the application. To run the application, make sure flutter 2.5.3 is installed in your computer and type `flutter run` inside any of the file folder. 

### Data Processing Results
All data processing resutls are kept inside the folder `Forecast_code_and_result` and `Data.ipynb`. The former keeps the codes and datas required to run the machine learning algorithm to forecast.    
`Data.ipynb` conatins resources required to process the data
