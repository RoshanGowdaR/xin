echo "Enter the basic salary: "
read basic_salary

if [ $basic_salary -lt 1500 ]; then
            HRA=`expr $basic_salary \* 10 / 100`
                DA=`expr $basic_salary \* 90 / 100`
        else
                    HRA=500
                        DA=`expr $basic_salary \* 98 / 100`
fi

gross_salary=$((basic_salary + HRA + DA))

echo "Basic Salary: Rs. $basic_salary"
echo "HRA: Rs. $HRA"
echo "DA: Rs. $DA"
echo "Gross Salary: Rs. $gross_salary"
