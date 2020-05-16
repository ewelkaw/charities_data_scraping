if [ -z "$1" ]
then
  echo "Syntax: ./loading_data_to_db.sh DB_NAME"
else
  psql $1 < create_table.sql
  for f in csv_data/*.csv; do
    sql_command="\copy charities(\"Reg charity number\",\"Sub charity number\",\"Charity name\",\"Status\",\"Date for financial year ending\",\"Total income\",\"Total spending\",\"Charitable spending\",\"Income generation and governance\",\"Retained for future use\",\"Website\",\"Email\",\"Telephone\",\"Type\",\"Company number\",\"What the charity does\",\"Who the charity helps\",\"How the charity works\",\"extra data\") FROM '$f' DELIMITER ',' CSV HEADER;"
    psql $1 -c "$sql_command"
  done
fi
