# ==========================================
# CampusPulse - Data Analysis Project
# ==========================================

import pandas as pd
import matplotlib.pyplot as plt

# ------------------------------------------
# 1. Load Excel Data
# ------------------------------------------

file_path = r"C:\CampusPulse\CampusPulse.xlsx"

library = pd.read_excel(file_path, sheet_name="Sheet1")
lab = pd.read_excel(file_path, sheet_name="Sheet2")
canteen = pd.read_excel(file_path, sheet_name="Sheet3")
transport = pd.read_excel(file_path, sheet_name="Sheet4")

print("Data loaded successfully!")

# ------------------------------------------
# 2. Data Quality Check
# ------------------------------------------

print("\n--- Data Quality ---")

for name, df in {
    "Library": library,
    "Lab": lab,
    "Canteen": canteen,
    "Transport": transport
}.items():

    print(f"\n{name}")
    print("Rows:", len(df))
    print("Missing values:", df.isnull().sum().sum())
    print("Duplicates:", df.duplicated().sum())

# ------------------------------------------
# 3. Library Analysis
# ------------------------------------------

"""daily_library = library.groupby("Day")["Library_Activity"].sum()

print("\n--- Library Activity ---")
print(daily_library)

daily_library.plot(kind="bar")
plt.title("Library Activity by Day")
plt.xlabel("Day")
plt.ylabel("Library Activity")
plt.tight_layout()
plt.show()

# ------------------------------------------
# 4. Lab Analysis
# ------------------------------------------

lab_summary = lab.groupby("Lab")["Utilization_%"].mean()

print("\n--- Lab Utilization ---")
print(lab_summary)

lab_summary.plot(kind="bar")
plt.title("Average Lab Utilization")
plt.xlabel("Lab")
plt.ylabel("Utilization")
plt.tight_layout()
plt.show()

# ------------------------------------------
# 5. Canteen Analysis
# ------------------------------------------

canteen_summary = canteen.groupby("Food_Category")["Quantity_Sold"].sum()

print("\n--- Canteen Sales by Category ---")
print(canteen_summary)

canteen_summary.plot(kind="bar")
plt.title("Canteen Sales by Category")
plt.xlabel("Food Category")
plt.ylabel("Quantity Sold")
plt.tight_layout()
plt.show()"""

# ------------------------------------------
# 6. Transport Analysis
# ------------------------------------------

transport_summary = transport.groupby("Route")["Students_Boarded"].sum()

print("\n--- Students Boarded by Route ---")
print(transport_summary)

transport_summary.plot(kind="bar")
plt.title("Students Boarded by Route")
plt.xlabel("Route")
plt.ylabel("Students Boarded")
plt.tight_layout()
plt.show()