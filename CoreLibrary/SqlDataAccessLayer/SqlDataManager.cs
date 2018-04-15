/************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************
 Created By: EJ Alexandra - 2016
             An Abstract Level, llc
 License:    Mozilla Public License 2.0
 ************************************************
 CODEE42 - AUTO GENERATED FILE - DO NOT OVERWRITE
 ************************************************/
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Configuration;

using AirtableDigitalVideoProduction.Lib.DataClasses;

using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.SqlDataManagement
{
    public partial class SqlDataManager : IDisposable
    {
        public SqlDataManager() : this(SqlDataManager.LastConnectionString) 
        {
            this.Schema = "dbo";
        }
    
        public SqlDataManager(String connectionString)
        {
            this.Schema = "dbo";
            this.ConnectionString = connectionString;
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                this.ConnectionString = ConfigurationManager.ConnectionStrings[0].ConnectionString;
            }
        }

        public SqlDataManager(String dataSourceName, String dbName) 
        {
            this.Schema = "dbo";
            this.DataSourceName = dataSourceName;
            this.DBName = dbName;
        }
        
        public void Dispose() 
        {
            this.IsDisposed = true;
        }
        
        public static string LastConnectionString { get; set; }
        public string ConnectionString { get; set; }
        public String DataSourceName { get; set; }
        public String DBName { get; set; }
        public Boolean IsDisposed { get; set; }
        public String Schema { get; set; }
        

  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(StaffDirectory staffDirectory)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[StaffDirectory] (StaffDirectoryId, Name, Title, Team, Email, Office, CellPhone, PropsEquipmentinPossession, createdTime)
                                    VALUES (@StaffDirectoryId, @Name, @Title, @Team, @Email, @Office, @CellPhone, @PropsEquipmentinPossession, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(staffDirectory.StaffDirectoryId, null)) cmd.Parameters.AddWithValue("@StaffDirectoryId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@StaffDirectoryId", staffDirectory.StaffDirectoryId);
                
                  
                if (ReferenceEquals(staffDirectory.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", staffDirectory.Name);
                
                  
                if (ReferenceEquals(staffDirectory.Title, null)) cmd.Parameters.AddWithValue("@Title", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Title", staffDirectory.Title);
                
                  
                if (ReferenceEquals(staffDirectory.Team, null)) cmd.Parameters.AddWithValue("@Team", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Team", staffDirectory.Team);
                
                  
                if (ReferenceEquals(staffDirectory.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", staffDirectory.Email);
                
                  
                if (ReferenceEquals(staffDirectory.Office, null)) cmd.Parameters.AddWithValue("@Office", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Office", staffDirectory.Office);
                
                  
                if (ReferenceEquals(staffDirectory.CellPhone, null)) cmd.Parameters.AddWithValue("@CellPhone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CellPhone", staffDirectory.CellPhone);
                
                  
                if (ReferenceEquals(staffDirectory.PropsEquipmentinPossession, null)) cmd.Parameters.AddWithValue("@PropsEquipmentinPossession", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PropsEquipmentinPossession", staffDirectory.PropsEquipmentinPossession);
                
                  
                if (ReferenceEquals(staffDirectory.createdTime, null) ||
                    (staffDirectory.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", staffDirectory.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(StaffDirectory staffDirectory)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = staffDirectory.StaffDirectoryId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [StaffDirectory] WHERE StaffDirectoryId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(staffDirectory);
                else return this.Insert(staffDirectory);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllStaffDirectories<T>()
            where T : StaffDirectory, new()
        {
            return this.GetAllStaffDirectories<T>(String.Empty);
        }

        
        public List<T> GetAllStaffDirectories<T>(String whereClause)
            where T : StaffDirectory, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[StaffDirectory]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T staffDirectory = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("StaffDirectoryId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.StaffDirectoryId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Title");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.Title = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Team");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.Team = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Email");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.Email = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Office");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.Office = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("CellPhone");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.CellPhone = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("PropsEquipmentinPossession");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          staffDirectory.PropsEquipmentinPossession = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          staffDirectory.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(staffDirectory);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified StaffDirectory
        /// </summary>
        /// <returns></returns>
        public int Update(StaffDirectory staffDirectory)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[StaffDirectory] SET 
                                    [Name] = @Name, [Title] = @Title, [Team] = @Team, [Email] = @Email, [Office] = @Office, [CellPhone] = @CellPhone, [PropsEquipmentinPossession] = @PropsEquipmentinPossession, [createdTime] = @createdTime
                                    WHERE  [StaffDirectoryId] = @StaffDirectoryId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(staffDirectory.StaffDirectoryId, null)) cmd.Parameters.AddWithValue("@StaffDirectoryId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@StaffDirectoryId", staffDirectory.StaffDirectoryId);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", staffDirectory.Name);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.Title, null)) cmd.Parameters.AddWithValue("@Title", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Title", staffDirectory.Title);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.Team, null)) cmd.Parameters.AddWithValue("@Team", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Team", staffDirectory.Team);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", staffDirectory.Email);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.Office, null)) cmd.Parameters.AddWithValue("@Office", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Office", staffDirectory.Office);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.CellPhone, null)) cmd.Parameters.AddWithValue("@CellPhone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CellPhone", staffDirectory.CellPhone);
                 //TEXT
                
                if (ReferenceEquals(staffDirectory.PropsEquipmentinPossession, null)) cmd.Parameters.AddWithValue("@PropsEquipmentinPossession", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@PropsEquipmentinPossession", staffDirectory.PropsEquipmentinPossession);
                 //DATETIME
                
                if (ReferenceEquals(staffDirectory.createdTime, null) ||
                    (staffDirectory.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", staffDirectory.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified StaffDirectory
        /// </summary>
        /// <returns></returns>
        public int Delete(StaffDirectory staffDirectory)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[StaffDirectory] 
                                    WHERE  [StaffDirectoryId] = @StaffDirectoryId", this.Schema);
                                    
                
                if (ReferenceEquals(staffDirectory.StaffDirectoryId, null)) cmd.Parameters.AddWithValue("@StaffDirectoryId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@StaffDirectoryId", staffDirectory.StaffDirectoryId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Location location)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Location] (LocationId, Name, Address, MainContact, Hours, CurrentStatus, createdTime)
                                    VALUES (@LocationId, @Name, @Address, @MainContact, @Hours, @CurrentStatus, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(location.LocationId, null)) cmd.Parameters.AddWithValue("@LocationId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LocationId", location.LocationId);
                
                  
                if (ReferenceEquals(location.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", location.Name);
                
                  
                if (ReferenceEquals(location.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", location.Address);
                
                  
                if (ReferenceEquals(location.MainContact, null)) cmd.Parameters.AddWithValue("@MainContact", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@MainContact", location.MainContact);
                
                  
                if (ReferenceEquals(location.Hours, null)) cmd.Parameters.AddWithValue("@Hours", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Hours", location.Hours);
                
                  
                if (ReferenceEquals(location.CurrentStatus, null)) cmd.Parameters.AddWithValue("@CurrentStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CurrentStatus", location.CurrentStatus);
                
                  
                if (ReferenceEquals(location.createdTime, null) ||
                    (location.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", location.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Location location)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = location.LocationId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Location] WHERE LocationId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(location);
                else return this.Insert(location);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllLocations<T>()
            where T : Location, new()
        {
            return this.GetAllLocations<T>(String.Empty);
        }

        
        public List<T> GetAllLocations<T>(String whereClause)
            where T : Location, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Location]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T location = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("LocationId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.LocationId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Address");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.Address = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("MainContact");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.MainContact = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Hours");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.Hours = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("CurrentStatus");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          location.CurrentStatus = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          location.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(location);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Location
        /// </summary>
        /// <returns></returns>
        public int Update(Location location)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Location] SET 
                                    [Name] = @Name, [Address] = @Address, [MainContact] = @MainContact, [Hours] = @Hours, [CurrentStatus] = @CurrentStatus, [createdTime] = @createdTime
                                    WHERE  [LocationId] = @LocationId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(location.LocationId, null)) cmd.Parameters.AddWithValue("@LocationId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LocationId", location.LocationId);
                 //TEXT
                
                if (ReferenceEquals(location.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", location.Name);
                 //TEXT
                
                if (ReferenceEquals(location.Address, null)) cmd.Parameters.AddWithValue("@Address", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Address", location.Address);
                 //TEXT
                
                if (ReferenceEquals(location.MainContact, null)) cmd.Parameters.AddWithValue("@MainContact", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@MainContact", location.MainContact);
                 //TEXT
                
                if (ReferenceEquals(location.Hours, null)) cmd.Parameters.AddWithValue("@Hours", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Hours", location.Hours);
                 //TEXT
                
                if (ReferenceEquals(location.CurrentStatus, null)) cmd.Parameters.AddWithValue("@CurrentStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CurrentStatus", location.CurrentStatus);
                 //DATETIME
                
                if (ReferenceEquals(location.createdTime, null) ||
                    (location.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", location.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Location
        /// </summary>
        /// <returns></returns>
        public int Delete(Location location)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Location] 
                                    WHERE  [LocationId] = @LocationId", this.Schema);
                                    
                
                if (ReferenceEquals(location.LocationId, null)) cmd.Parameters.AddWithValue("@LocationId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@LocationId", location.LocationId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Shot shot)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Shot] (ShotId, Scene, ShotSize, Angle, CameraMovement, Lens, ShootDate, ShotNum, Name, Video, createdTime)
                                    VALUES (@ShotId, @Scene, @ShotSize, @Angle, @CameraMovement, @Lens, @ShootDate, @ShotNum, @Name, @Video, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(shot.ShotId, null)) cmd.Parameters.AddWithValue("@ShotId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotId", shot.ShotId);
                
                  
                if (ReferenceEquals(shot.Scene, null)) cmd.Parameters.AddWithValue("@Scene", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Scene", shot.Scene);
                
                  
                if (ReferenceEquals(shot.ShotSize, null)) cmd.Parameters.AddWithValue("@ShotSize", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotSize", shot.ShotSize);
                
                  
                if (ReferenceEquals(shot.Angle, null)) cmd.Parameters.AddWithValue("@Angle", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Angle", shot.Angle);
                
                  
                if (ReferenceEquals(shot.CameraMovement, null)) cmd.Parameters.AddWithValue("@CameraMovement", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CameraMovement", shot.CameraMovement);
                
                  
                if (ReferenceEquals(shot.Lens, null)) cmd.Parameters.AddWithValue("@Lens", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Lens", shot.Lens);
                
                  
                if (ReferenceEquals(shot.ShootDate, null)) cmd.Parameters.AddWithValue("@ShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootDate", shot.ShootDate);
                
                  
                if (ReferenceEquals(shot.ShotNum, null)) cmd.Parameters.AddWithValue("@ShotNum", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotNum", shot.ShotNum);
                
                  
                if (ReferenceEquals(shot.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", shot.Name);
                
                  
                if (ReferenceEquals(shot.Video, null)) cmd.Parameters.AddWithValue("@Video", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Video", shot.Video);
                
                  
                if (ReferenceEquals(shot.createdTime, null) ||
                    (shot.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", shot.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Shot shot)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = shot.ShotId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Shot] WHERE ShotId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(shot);
                else return this.Insert(shot);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllShots<T>()
            where T : Shot, new()
        {
            return this.GetAllShots<T>(String.Empty);
        }

        
        public List<T> GetAllShots<T>(String whereClause)
            where T : Shot, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Shot]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T shot = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("ShotId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.ShotId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Scene");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.Scene = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ShotSize");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.ShotSize = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Angle");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.Angle = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("CameraMovement");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.CameraMovement = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Lens");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.Lens = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ShootDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          shot.ShootDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ShotNum");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          shot.ShotNum = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DECIMAL
                      {
                          
                          shot.Name = reader.GetDecimal(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Video");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          shot.Video = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          shot.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(shot);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Shot
        /// </summary>
        /// <returns></returns>
        public int Update(Shot shot)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Shot] SET 
                                    [Scene] = @Scene, [ShotSize] = @ShotSize, [Angle] = @Angle, [CameraMovement] = @CameraMovement, [Lens] = @Lens, [ShootDate] = @ShootDate, [ShotNum] = @ShotNum, [Name] = @Name, [Video] = @Video, [createdTime] = @createdTime
                                    WHERE  [ShotId] = @ShotId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(shot.ShotId, null)) cmd.Parameters.AddWithValue("@ShotId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotId", shot.ShotId);
                 //TEXT
                
                if (ReferenceEquals(shot.Scene, null)) cmd.Parameters.AddWithValue("@Scene", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Scene", shot.Scene);
                 //TEXT
                
                if (ReferenceEquals(shot.ShotSize, null)) cmd.Parameters.AddWithValue("@ShotSize", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotSize", shot.ShotSize);
                 //TEXT
                
                if (ReferenceEquals(shot.Angle, null)) cmd.Parameters.AddWithValue("@Angle", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Angle", shot.Angle);
                 //TEXT
                
                if (ReferenceEquals(shot.CameraMovement, null)) cmd.Parameters.AddWithValue("@CameraMovement", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@CameraMovement", shot.CameraMovement);
                 //TEXT
                
                if (ReferenceEquals(shot.Lens, null)) cmd.Parameters.AddWithValue("@Lens", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Lens", shot.Lens);
                 //xs:date
                
                if (ReferenceEquals(shot.ShootDate, null)) cmd.Parameters.AddWithValue("@ShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootDate", shot.ShootDate);
                 //INT32
                
                if (ReferenceEquals(shot.ShotNum, null)) cmd.Parameters.AddWithValue("@ShotNum", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShotNum", shot.ShotNum);
                 //xs:decimal
                
                if (ReferenceEquals(shot.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", shot.Name);
                 //TEXT
                
                if (ReferenceEquals(shot.Video, null)) cmd.Parameters.AddWithValue("@Video", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Video", shot.Video);
                 //DATETIME
                
                if (ReferenceEquals(shot.createdTime, null) ||
                    (shot.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", shot.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Shot
        /// </summary>
        /// <returns></returns>
        public int Delete(Shot shot)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Shot] 
                                    WHERE  [ShotId] = @ShotId", this.Schema);
                                    
                
                if (ReferenceEquals(shot.ShotId, null)) cmd.Parameters.AddWithValue("@ShotId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@ShotId", shot.ShotId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Video video)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Video] (VideoId, SlugName, Writer, Platform, Format, ReleaseDate, ProjectStatus, Editor, FactCheck, ScriptURL, HostVOArtist, ScriptDeadline, ShootDate, ReviewCutLatest, Signoff, ShootPlan, LIVEURL, AssignedEditDate, RightsClearancesStatus, Series, TargetLengthminutes, Budget, Spend, Agency, RemainingBudget, createdTime)
                                    VALUES (@VideoId, @SlugName, @Writer, @Platform, @Format, @ReleaseDate, @ProjectStatus, @Editor, @FactCheck, @ScriptURL, @HostVOArtist, @ScriptDeadline, @ShootDate, @ReviewCutLatest, @Signoff, @ShootPlan, @LIVEURL, @AssignedEditDate, @RightsClearancesStatus, @Series, @TargetLengthminutes, @Budget, @Spend, @Agency, @RemainingBudget, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(video.VideoId, null)) cmd.Parameters.AddWithValue("@VideoId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VideoId", video.VideoId);
                
                  
                if (ReferenceEquals(video.SlugName, null)) cmd.Parameters.AddWithValue("@SlugName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SlugName", video.SlugName);
                
                  
                if (ReferenceEquals(video.Writer, null)) cmd.Parameters.AddWithValue("@Writer", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Writer", video.Writer);
                
                  
                if (ReferenceEquals(video.Platform, null)) cmd.Parameters.AddWithValue("@Platform", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Platform", video.Platform);
                
                  
                if (ReferenceEquals(video.Format, null)) cmd.Parameters.AddWithValue("@Format", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Format", video.Format);
                
                  
                if (ReferenceEquals(video.ReleaseDate, null) ||
                    (video.ReleaseDate == DateTime.MinValue)) cmd.Parameters.AddWithValue("@ReleaseDate", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@ReleaseDate", video.ReleaseDate);
                
                  
                if (ReferenceEquals(video.ProjectStatus, null)) cmd.Parameters.AddWithValue("@ProjectStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ProjectStatus", video.ProjectStatus);
                
                  
                if (ReferenceEquals(video.Editor, null)) cmd.Parameters.AddWithValue("@Editor", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Editor", video.Editor);
                
                  
                if (ReferenceEquals(video.FactCheck, null)) cmd.Parameters.AddWithValue("@FactCheck", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FactCheck", video.FactCheck);
                
                  
                if (ReferenceEquals(video.ScriptURL, null)) cmd.Parameters.AddWithValue("@ScriptURL", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ScriptURL", video.ScriptURL);
                
                  
                if (ReferenceEquals(video.HostVOArtist, null)) cmd.Parameters.AddWithValue("@HostVOArtist", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@HostVOArtist", video.HostVOArtist);
                
                  
                if (ReferenceEquals(video.ScriptDeadline, null)) cmd.Parameters.AddWithValue("@ScriptDeadline", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ScriptDeadline", video.ScriptDeadline);
                
                  
                if (ReferenceEquals(video.ShootDate, null)) cmd.Parameters.AddWithValue("@ShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootDate", video.ShootDate);
                
                  
                if (ReferenceEquals(video.ReviewCutLatest, null)) cmd.Parameters.AddWithValue("@ReviewCutLatest", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ReviewCutLatest", video.ReviewCutLatest);
                
                  
                if (ReferenceEquals(video.Signoff, null)) cmd.Parameters.AddWithValue("@Signoff", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Signoff", video.Signoff);
                
                  
                if (ReferenceEquals(video.ShootPlan, null)) cmd.Parameters.AddWithValue("@ShootPlan", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootPlan", video.ShootPlan);
                
                  
                if (ReferenceEquals(video.LIVEURL, null)) cmd.Parameters.AddWithValue("@LIVEURL", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LIVEURL", video.LIVEURL);
                
                  
                if (ReferenceEquals(video.AssignedEditDate, null)) cmd.Parameters.AddWithValue("@AssignedEditDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AssignedEditDate", video.AssignedEditDate);
                
                  
                if (ReferenceEquals(video.RightsClearancesStatus, null)) cmd.Parameters.AddWithValue("@RightsClearancesStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RightsClearancesStatus", video.RightsClearancesStatus);
                
                  
                if (ReferenceEquals(video.Series, null)) cmd.Parameters.AddWithValue("@Series", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Series", video.Series);
                
                  
                if (ReferenceEquals(video.TargetLengthminutes, null)) cmd.Parameters.AddWithValue("@TargetLengthminutes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@TargetLengthminutes", video.TargetLengthminutes);
                
                  
                if (ReferenceEquals(video.Budget, null)) cmd.Parameters.AddWithValue("@Budget", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Budget", video.Budget);
                
                  
                if (ReferenceEquals(video.Spend, null)) cmd.Parameters.AddWithValue("@Spend", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Spend", video.Spend);
                
                  
                if (ReferenceEquals(video.Agency, null)) cmd.Parameters.AddWithValue("@Agency", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Agency", video.Agency);
                
                  
                if (ReferenceEquals(video.RemainingBudget, null)) cmd.Parameters.AddWithValue("@RemainingBudget", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RemainingBudget", video.RemainingBudget);
                
                  
                if (ReferenceEquals(video.createdTime, null) ||
                    (video.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", video.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Video video)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = video.VideoId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Video] WHERE VideoId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(video);
                else return this.Insert(video);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllVideos<T>()
            where T : Video, new()
        {
            return this.GetAllVideos<T>(String.Empty);
        }

        
        public List<T> GetAllVideos<T>(String whereClause)
            where T : Video, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Video]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T video = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("VideoId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.VideoId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("SlugName");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.SlugName = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Writer");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Writer = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Platform");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Platform = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Format");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Format = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ReleaseDate");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          video.ReleaseDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ProjectStatus");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.ProjectStatus = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Editor");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Editor = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("FactCheck");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.FactCheck = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ScriptURL");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.ScriptURL = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("HostVOArtist");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.HostVOArtist = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ScriptDeadline");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          video.ScriptDeadline = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ShootDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          video.ShootDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ReviewCutLatest");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.ReviewCutLatest = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Signoff");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Signoff = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("ShootPlan");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.ShootPlan = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("LIVEURL");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.LIVEURL = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("AssignedEditDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          video.AssignedEditDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("RightsClearancesStatus");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.RightsClearancesStatus = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Series");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Series = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("TargetLengthminutes");
                      if (!reader.IsDBNull(propertyIndex)) //SHORT
                      {
                          
                          video.TargetLengthminutes = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Budget");
                      if (!reader.IsDBNull(propertyIndex)) //SHORT
                      {
                          
                          video.Budget = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Spend");
                      if (!reader.IsDBNull(propertyIndex)) //SHORT
                      {
                          
                          video.Spend = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Agency");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          video.Agency = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("RemainingBudget");
                      if (!reader.IsDBNull(propertyIndex)) //SHORT
                      {
                          
                          video.RemainingBudget = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          video.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(video);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Video
        /// </summary>
        /// <returns></returns>
        public int Update(Video video)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Video] SET 
                                    [SlugName] = @SlugName, [Writer] = @Writer, [Platform] = @Platform, [Format] = @Format, [ReleaseDate] = @ReleaseDate, [ProjectStatus] = @ProjectStatus, [Editor] = @Editor, [FactCheck] = @FactCheck, [ScriptURL] = @ScriptURL, [HostVOArtist] = @HostVOArtist, [ScriptDeadline] = @ScriptDeadline, [ShootDate] = @ShootDate, [ReviewCutLatest] = @ReviewCutLatest, [Signoff] = @Signoff, [ShootPlan] = @ShootPlan, [LIVEURL] = @LIVEURL, [AssignedEditDate] = @AssignedEditDate, [RightsClearancesStatus] = @RightsClearancesStatus, [Series] = @Series, [TargetLengthminutes] = @TargetLengthminutes, [Budget] = @Budget, [Spend] = @Spend, [Agency] = @Agency, [RemainingBudget] = @RemainingBudget, [createdTime] = @createdTime
                                    WHERE  [VideoId] = @VideoId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(video.VideoId, null)) cmd.Parameters.AddWithValue("@VideoId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@VideoId", video.VideoId);
                 //TEXT
                
                if (ReferenceEquals(video.SlugName, null)) cmd.Parameters.AddWithValue("@SlugName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SlugName", video.SlugName);
                 //TEXT
                
                if (ReferenceEquals(video.Writer, null)) cmd.Parameters.AddWithValue("@Writer", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Writer", video.Writer);
                 //TEXT
                
                if (ReferenceEquals(video.Platform, null)) cmd.Parameters.AddWithValue("@Platform", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Platform", video.Platform);
                 //TEXT
                
                if (ReferenceEquals(video.Format, null)) cmd.Parameters.AddWithValue("@Format", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Format", video.Format);
                 //DATETIME
                
                if (ReferenceEquals(video.ReleaseDate, null) ||
                    (video.ReleaseDate == DateTime.MinValue)) cmd.Parameters.AddWithValue("@ReleaseDate", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@ReleaseDate", video.ReleaseDate);
                 //TEXT
                
                if (ReferenceEquals(video.ProjectStatus, null)) cmd.Parameters.AddWithValue("@ProjectStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ProjectStatus", video.ProjectStatus);
                 //TEXT
                
                if (ReferenceEquals(video.Editor, null)) cmd.Parameters.AddWithValue("@Editor", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Editor", video.Editor);
                 //TEXT
                
                if (ReferenceEquals(video.FactCheck, null)) cmd.Parameters.AddWithValue("@FactCheck", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@FactCheck", video.FactCheck);
                 //TEXT
                
                if (ReferenceEquals(video.ScriptURL, null)) cmd.Parameters.AddWithValue("@ScriptURL", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ScriptURL", video.ScriptURL);
                 //TEXT
                
                if (ReferenceEquals(video.HostVOArtist, null)) cmd.Parameters.AddWithValue("@HostVOArtist", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@HostVOArtist", video.HostVOArtist);
                 //xs:date
                
                if (ReferenceEquals(video.ScriptDeadline, null)) cmd.Parameters.AddWithValue("@ScriptDeadline", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ScriptDeadline", video.ScriptDeadline);
                 //xs:date
                
                if (ReferenceEquals(video.ShootDate, null)) cmd.Parameters.AddWithValue("@ShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootDate", video.ShootDate);
                 //TEXT
                
                if (ReferenceEquals(video.ReviewCutLatest, null)) cmd.Parameters.AddWithValue("@ReviewCutLatest", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ReviewCutLatest", video.ReviewCutLatest);
                 //TEXT
                
                if (ReferenceEquals(video.Signoff, null)) cmd.Parameters.AddWithValue("@Signoff", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Signoff", video.Signoff);
                 //TEXT
                
                if (ReferenceEquals(video.ShootPlan, null)) cmd.Parameters.AddWithValue("@ShootPlan", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@ShootPlan", video.ShootPlan);
                 //TEXT
                
                if (ReferenceEquals(video.LIVEURL, null)) cmd.Parameters.AddWithValue("@LIVEURL", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@LIVEURL", video.LIVEURL);
                 //xs:date
                
                if (ReferenceEquals(video.AssignedEditDate, null)) cmd.Parameters.AddWithValue("@AssignedEditDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AssignedEditDate", video.AssignedEditDate);
                 //TEXT
                
                if (ReferenceEquals(video.RightsClearancesStatus, null)) cmd.Parameters.AddWithValue("@RightsClearancesStatus", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RightsClearancesStatus", video.RightsClearancesStatus);
                 //TEXT
                
                if (ReferenceEquals(video.Series, null)) cmd.Parameters.AddWithValue("@Series", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Series", video.Series);
                 //SHORT
                
                if (ReferenceEquals(video.TargetLengthminutes, null)) cmd.Parameters.AddWithValue("@TargetLengthminutes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@TargetLengthminutes", video.TargetLengthminutes);
                 //SHORT
                
                if (ReferenceEquals(video.Budget, null)) cmd.Parameters.AddWithValue("@Budget", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Budget", video.Budget);
                 //SHORT
                
                if (ReferenceEquals(video.Spend, null)) cmd.Parameters.AddWithValue("@Spend", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Spend", video.Spend);
                 //TEXT
                
                if (ReferenceEquals(video.Agency, null)) cmd.Parameters.AddWithValue("@Agency", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Agency", video.Agency);
                 //SHORT
                
                if (ReferenceEquals(video.RemainingBudget, null)) cmd.Parameters.AddWithValue("@RemainingBudget", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@RemainingBudget", video.RemainingBudget);
                 //DATETIME
                
                if (ReferenceEquals(video.createdTime, null) ||
                    (video.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", video.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Video
        /// </summary>
        /// <returns></returns>
        public int Delete(Video video)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Video] 
                                    WHERE  [VideoId] = @VideoId", this.Schema);
                                    
                
                if (ReferenceEquals(video.VideoId, null)) cmd.Parameters.AddWithValue("@VideoId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@VideoId", video.VideoId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(AgencyContact agencyContact)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[AgencyContact] (AgencyContactId, Name, Phone, Email, Team, Agency, createdTime)
                                    VALUES (@AgencyContactId, @Name, @Phone, @Email, @Team, @Agency, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(agencyContact.AgencyContactId, null)) cmd.Parameters.AddWithValue("@AgencyContactId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AgencyContactId", agencyContact.AgencyContactId);
                
                  
                if (ReferenceEquals(agencyContact.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", agencyContact.Name);
                
                  
                if (ReferenceEquals(agencyContact.Phone, null)) cmd.Parameters.AddWithValue("@Phone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Phone", agencyContact.Phone);
                
                  
                if (ReferenceEquals(agencyContact.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", agencyContact.Email);
                
                  
                if (ReferenceEquals(agencyContact.Team, null)) cmd.Parameters.AddWithValue("@Team", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Team", agencyContact.Team);
                
                  
                if (ReferenceEquals(agencyContact.Agency, null)) cmd.Parameters.AddWithValue("@Agency", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Agency", agencyContact.Agency);
                
                  
                if (ReferenceEquals(agencyContact.createdTime, null) ||
                    (agencyContact.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", agencyContact.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(AgencyContact agencyContact)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = agencyContact.AgencyContactId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [AgencyContact] WHERE AgencyContactId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(agencyContact);
                else return this.Insert(agencyContact);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllAgencyContacts<T>()
            where T : AgencyContact, new()
        {
            return this.GetAllAgencyContacts<T>(String.Empty);
        }

        
        public List<T> GetAllAgencyContacts<T>(String whereClause)
            where T : AgencyContact, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[AgencyContact]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T agencyContact = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("AgencyContactId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.AgencyContactId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Phone");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.Phone = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Email");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.Email = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Team");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.Team = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Agency");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agencyContact.Agency = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          agencyContact.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(agencyContact);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified AgencyContact
        /// </summary>
        /// <returns></returns>
        public int Update(AgencyContact agencyContact)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[AgencyContact] SET 
                                    [Name] = @Name, [Phone] = @Phone, [Email] = @Email, [Team] = @Team, [Agency] = @Agency, [createdTime] = @createdTime
                                    WHERE  [AgencyContactId] = @AgencyContactId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(agencyContact.AgencyContactId, null)) cmd.Parameters.AddWithValue("@AgencyContactId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AgencyContactId", agencyContact.AgencyContactId);
                 //TEXT
                
                if (ReferenceEquals(agencyContact.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", agencyContact.Name);
                 //TEXT
                
                if (ReferenceEquals(agencyContact.Phone, null)) cmd.Parameters.AddWithValue("@Phone", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Phone", agencyContact.Phone);
                 //TEXT
                
                if (ReferenceEquals(agencyContact.Email, null)) cmd.Parameters.AddWithValue("@Email", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Email", agencyContact.Email);
                 //TEXT
                
                if (ReferenceEquals(agencyContact.Team, null)) cmd.Parameters.AddWithValue("@Team", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Team", agencyContact.Team);
                 //TEXT
                
                if (ReferenceEquals(agencyContact.Agency, null)) cmd.Parameters.AddWithValue("@Agency", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Agency", agencyContact.Agency);
                 //DATETIME
                
                if (ReferenceEquals(agencyContact.createdTime, null) ||
                    (agencyContact.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", agencyContact.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified AgencyContact
        /// </summary>
        /// <returns></returns>
        public int Delete(AgencyContact agencyContact)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[AgencyContact] 
                                    WHERE  [AgencyContactId] = @AgencyContactId", this.Schema);
                                    
                
                if (ReferenceEquals(agencyContact.AgencyContactId, null)) cmd.Parameters.AddWithValue("@AgencyContactId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@AgencyContactId", agencyContact.AgencyContactId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Scene scene)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Scene] (SceneId, SceneName, Video, Props, Location, Script, SceneNum, createdTime)
                                    VALUES (@SceneId, @SceneName, @Video, @Props, @Location, @Script, @SceneNum, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(scene.SceneId, null)) cmd.Parameters.AddWithValue("@SceneId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneId", scene.SceneId);
                
                  
                if (ReferenceEquals(scene.SceneName, null)) cmd.Parameters.AddWithValue("@SceneName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneName", scene.SceneName);
                
                  
                if (ReferenceEquals(scene.Video, null)) cmd.Parameters.AddWithValue("@Video", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Video", scene.Video);
                
                  
                if (ReferenceEquals(scene.Props, null)) cmd.Parameters.AddWithValue("@Props", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Props", scene.Props);
                
                  
                if (ReferenceEquals(scene.Location, null)) cmd.Parameters.AddWithValue("@Location", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Location", scene.Location);
                
                  
                if (ReferenceEquals(scene.Script, null)) cmd.Parameters.AddWithValue("@Script", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Script", scene.Script);
                
                  
                if (ReferenceEquals(scene.SceneNum, null)) cmd.Parameters.AddWithValue("@SceneNum", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneNum", scene.SceneNum);
                
                  
                if (ReferenceEquals(scene.createdTime, null) ||
                    (scene.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", scene.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Scene scene)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = scene.SceneId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Scene] WHERE SceneId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(scene);
                else return this.Insert(scene);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllScenes<T>()
            where T : Scene, new()
        {
            return this.GetAllScenes<T>(String.Empty);
        }

        
        public List<T> GetAllScenes<T>(String whereClause)
            where T : Scene, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Scene]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T scene = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("SceneId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.SceneId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("SceneName");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.SceneName = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Video");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.Video = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Props");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.Props = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Location");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.Location = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Script");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          scene.Script = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("SceneNum");
                      if (!reader.IsDBNull(propertyIndex)) //INT32
                      {
                          
                          scene.SceneNum = reader.GetInt32(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          scene.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(scene);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Scene
        /// </summary>
        /// <returns></returns>
        public int Update(Scene scene)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Scene] SET 
                                    [SceneName] = @SceneName, [Video] = @Video, [Props] = @Props, [Location] = @Location, [Script] = @Script, [SceneNum] = @SceneNum, [createdTime] = @createdTime
                                    WHERE  [SceneId] = @SceneId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(scene.SceneId, null)) cmd.Parameters.AddWithValue("@SceneId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneId", scene.SceneId);
                 //TEXT
                
                if (ReferenceEquals(scene.SceneName, null)) cmd.Parameters.AddWithValue("@SceneName", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneName", scene.SceneName);
                 //TEXT
                
                if (ReferenceEquals(scene.Video, null)) cmd.Parameters.AddWithValue("@Video", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Video", scene.Video);
                 //TEXT
                
                if (ReferenceEquals(scene.Props, null)) cmd.Parameters.AddWithValue("@Props", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Props", scene.Props);
                 //TEXT
                
                if (ReferenceEquals(scene.Location, null)) cmd.Parameters.AddWithValue("@Location", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Location", scene.Location);
                 //TEXT
                
                if (ReferenceEquals(scene.Script, null)) cmd.Parameters.AddWithValue("@Script", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Script", scene.Script);
                 //INT32
                
                if (ReferenceEquals(scene.SceneNum, null)) cmd.Parameters.AddWithValue("@SceneNum", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@SceneNum", scene.SceneNum);
                 //DATETIME
                
                if (ReferenceEquals(scene.createdTime, null) ||
                    (scene.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", scene.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Scene
        /// </summary>
        /// <returns></returns>
        public int Delete(Scene scene)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Scene] 
                                    WHERE  [SceneId] = @SceneId", this.Schema);
                                    
                
                if (ReferenceEquals(scene.SceneId, null)) cmd.Parameters.AddWithValue("@SceneId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@SceneId", scene.SceneId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(InventoryItem inventoryItem)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[InventoryItem] (InventoryItemId, Name, Type, Source, Status, Whocurrentlyhasit, Scenes, NextShootDate, createdTime)
                                    VALUES (@InventoryItemId, @Name, @Type, @Source, @Status, @Whocurrentlyhasit, @Scenes, @NextShootDate, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(inventoryItem.InventoryItemId, null)) cmd.Parameters.AddWithValue("@InventoryItemId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@InventoryItemId", inventoryItem.InventoryItemId);
                
                  
                if (ReferenceEquals(inventoryItem.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", inventoryItem.Name);
                
                  
                if (ReferenceEquals(inventoryItem.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", inventoryItem.Type);
                
                  
                if (ReferenceEquals(inventoryItem.Source, null)) cmd.Parameters.AddWithValue("@Source", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Source", inventoryItem.Source);
                
                  
                if (ReferenceEquals(inventoryItem.Status, null)) cmd.Parameters.AddWithValue("@Status", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Status", inventoryItem.Status);
                
                  
                if (ReferenceEquals(inventoryItem.Whocurrentlyhasit, null)) cmd.Parameters.AddWithValue("@Whocurrentlyhasit", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Whocurrentlyhasit", inventoryItem.Whocurrentlyhasit);
                
                  
                if (ReferenceEquals(inventoryItem.Scenes, null)) cmd.Parameters.AddWithValue("@Scenes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Scenes", inventoryItem.Scenes);
                
                  
                if (ReferenceEquals(inventoryItem.NextShootDate, null)) cmd.Parameters.AddWithValue("@NextShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@NextShootDate", inventoryItem.NextShootDate);
                
                  
                if (ReferenceEquals(inventoryItem.createdTime, null) ||
                    (inventoryItem.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", inventoryItem.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(InventoryItem inventoryItem)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = inventoryItem.InventoryItemId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [InventoryItem] WHERE InventoryItemId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(inventoryItem);
                else return this.Insert(inventoryItem);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllInventoryItems<T>()
            where T : InventoryItem, new()
        {
            return this.GetAllInventoryItems<T>(String.Empty);
        }

        
        public List<T> GetAllInventoryItems<T>(String whereClause)
            where T : InventoryItem, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[InventoryItem]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T inventoryItem = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("InventoryItemId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.InventoryItemId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Type");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Type = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Source");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Source = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Status");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Status = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Whocurrentlyhasit");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Whocurrentlyhasit = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Scenes");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          inventoryItem.Scenes = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("NextShootDate");
                      if (!reader.IsDBNull(propertyIndex)) //XS:DATE
                      {
                          
                          inventoryItem.NextShootDate = reader.GetDateTime(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          inventoryItem.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(inventoryItem);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified InventoryItem
        /// </summary>
        /// <returns></returns>
        public int Update(InventoryItem inventoryItem)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[InventoryItem] SET 
                                    [Name] = @Name, [Type] = @Type, [Source] = @Source, [Status] = @Status, [Whocurrentlyhasit] = @Whocurrentlyhasit, [Scenes] = @Scenes, [NextShootDate] = @NextShootDate, [createdTime] = @createdTime
                                    WHERE  [InventoryItemId] = @InventoryItemId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(inventoryItem.InventoryItemId, null)) cmd.Parameters.AddWithValue("@InventoryItemId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@InventoryItemId", inventoryItem.InventoryItemId);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", inventoryItem.Name);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Type, null)) cmd.Parameters.AddWithValue("@Type", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Type", inventoryItem.Type);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Source, null)) cmd.Parameters.AddWithValue("@Source", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Source", inventoryItem.Source);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Status, null)) cmd.Parameters.AddWithValue("@Status", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Status", inventoryItem.Status);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Whocurrentlyhasit, null)) cmd.Parameters.AddWithValue("@Whocurrentlyhasit", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Whocurrentlyhasit", inventoryItem.Whocurrentlyhasit);
                 //TEXT
                
                if (ReferenceEquals(inventoryItem.Scenes, null)) cmd.Parameters.AddWithValue("@Scenes", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Scenes", inventoryItem.Scenes);
                 //xs:date
                
                if (ReferenceEquals(inventoryItem.NextShootDate, null)) cmd.Parameters.AddWithValue("@NextShootDate", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@NextShootDate", inventoryItem.NextShootDate);
                 //DATETIME
                
                if (ReferenceEquals(inventoryItem.createdTime, null) ||
                    (inventoryItem.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", inventoryItem.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified InventoryItem
        /// </summary>
        /// <returns></returns>
        public int Delete(InventoryItem inventoryItem)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[InventoryItem] 
                                    WHERE  [InventoryItemId] = @InventoryItemId", this.Schema);
                                    
                
                if (ReferenceEquals(inventoryItem.InventoryItemId, null)) cmd.Parameters.AddWithValue("@InventoryItemId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@InventoryItemId", inventoryItem.InventoryItemId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

          
  
        /// <summary>
        /// Returns a count of the numbers of rows affected by the insert
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
  
  
  
        public int Insert(Agency agency)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"INSERT INTO [{0}].[Agency] (AgencyId, Name, createdTime)
                                    VALUES (@AgencyId, @Name, @createdTime)", this.Schema);

                
                  
                if (ReferenceEquals(agency.AgencyId, null)) cmd.Parameters.AddWithValue("@AgencyId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AgencyId", agency.AgencyId);
                
                  
                if (ReferenceEquals(agency.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", agency.Name);
                
                  
                if (ReferenceEquals(agency.createdTime, null) ||
                    (agency.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", agency.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
          /// <summary>
        /// Returns a count of the numbers of rows affected by the Upsert.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="dataSource"></param>
        /// <param name="dbName"></param>
        /// <returns></returns>
        public int Upsert(Agency agency)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                
                // Check if this method exists, and call insert or udpate as appropriate
                
                
                var id = agency.AgencyId;
                cmd.CommandText = String.Format(@"SELECT CASE WHEN EXISTS (SELECT * FROM [Agency] WHERE AgencyId = '{0}') THEN 1 else 0 END", id);
                
                var rowExists = cmd.ExecuteScalar();

                if (rowExists.SafeToString() == "1") return this.Update(agency);
                else return this.Insert(agency);
            }
            finally
            {
                conn.Close();
            }
        }
        
        public List<T> GetAllAgencies<T>()
            where T : Agency, new()
        {
            return this.GetAllAgencies<T>(String.Empty);
        }

        
        public List<T> GetAllAgencies<T>(String whereClause)
            where T : Agency, new()
        {
            List<T> results = new List<T>();
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"SELECT * FROM [{0}].[Agency]", this.Schema);
                if (!String.IsNullOrEmpty(whereClause)) 
                {
                    cmd.CommandText = String.Format("{0} WHERE {1}", cmd.CommandText, whereClause);
                }

                SqlDataReader reader = cmd.ExecuteReader();
                
                int propertyIndex = -1;
                while (reader.Read())
                {
                    T agency = new T();
                    
                    
                      propertyIndex = reader.GetOrdinal("AgencyId");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agency.AgencyId = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("Name");
                      if (!reader.IsDBNull(propertyIndex)) //TEXT
                      {
                          
                          agency.Name = reader.GetString(propertyIndex);
                      }
                   
                      propertyIndex = reader.GetOrdinal("createdTime");
                      if (!reader.IsDBNull(propertyIndex)) //DATETIME
                      {
                          
                          agency.createdTime = reader.GetDateTime(propertyIndex);
                      }
                   
                    results.Add(agency);
                }

                return results;
            }
            finally
            {
                conn.Close();
            }
        }
        
        /// <summary>
        /// Updates the specified Agency
        /// </summary>
        /// <returns></returns>
        public int Update(Agency agency)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"UPDATE [{0}].[Agency] SET 
                                    [Name] = @Name, [createdTime] = @createdTime
                                    WHERE  [AgencyId] = @AgencyId", this.Schema);

                 //TEXT
                
                if (ReferenceEquals(agency.AgencyId, null)) cmd.Parameters.AddWithValue("@AgencyId", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@AgencyId", agency.AgencyId);
                 //TEXT
                
                if (ReferenceEquals(agency.Name, null)) cmd.Parameters.AddWithValue("@Name", DBNull.Value);
                    
                else cmd.Parameters.AddWithValue("@Name", agency.Name);
                 //DATETIME
                
                if (ReferenceEquals(agency.createdTime, null) ||
                    (agency.createdTime == DateTime.MinValue)) cmd.Parameters.AddWithValue("@createdTime", DBNull.Value);
                  
                else cmd.Parameters.AddWithValue("@createdTime", agency.createdTime);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }
        
                
        /// <summary>
        /// Deletes the specified Agency
        /// </summary>
        /// <returns></returns>
        public int Delete(Agency agency)
        {
            SqlConnection conn = this.CreateSqlConnection();
            try
            {
                this.InitializeConnection(conn);
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = String.Format(@"DELETE FROM [{0}].[Agency] 
                                    WHERE  [AgencyId] = @AgencyId", this.Schema);
                                    
                
                if (ReferenceEquals(agency.AgencyId, null)) cmd.Parameters.AddWithValue("@AgencyId", DBNull.Value);
                else cmd.Parameters.AddWithValue("@AgencyId", agency.AgencyId);
                

                int rowsAffected = cmd.ExecuteNonQuery();

                return rowsAffected;
            }
            finally
            {
                conn.Close();
            }
        }

                  
            
            

        public object LastIdentity { get; set; }
        public string ExecuteAsUser { get; set; }
        
        private SqlConnection CreateSqlConnection() 
        {
            if (String.IsNullOrEmpty(this.ConnectionString))
            {
                SqlConnectionStringBuilder scsb = new SqlConnectionStringBuilder();
                scsb.DataSource = this.DataSourceName;
                scsb.InitialCatalog = this.DBName;
                scsb.IntegratedSecurity = true;
                this.ConnectionString = scsb.ConnectionString;
            }
            
            SqlDataManager.LastConnectionString = this.ConnectionString;
            
            return new SqlConnection(this.ConnectionString);
        }
        
        
        private void InitializeConnection(SqlConnection conn)
        {
            conn.Open();
            if (!String.IsNullOrEmpty(this.ExecuteAsUser))
            {
                using (SqlCommand cmd = conn.CreateCommand())
                {
                    cmd.CommandText = String.Format("EXECUTE AS USER='{0}'", this.ExecuteAsUser);
                    cmd.ExecuteNonQuery();
                }
            }
        }
    }
}

      