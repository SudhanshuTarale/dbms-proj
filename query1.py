from sqlalchemy import create_engine
import cx_Oracle
username = "starale"
cx_Oracle.init_oracle_client(lib_dir=r"C:/Users/starale/Downloads/instantclient_21_3")
engine = create_engine('oracle+cx_oracle://' + username + ':QcXuYsdApT0QTPBy1VipFmml@oracle.cise.ufl.edu:1521/?service_name=orcl')
con = engine.connect()
con.execute('CREATE TABLE team (team_id INT PRIMARY KEY,team_name VARCHAR(255) UNIQUE NOT NULL)')