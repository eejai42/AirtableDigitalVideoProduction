
    SET ANSI_NULLS ON
    GO

    SET QUOTED_IDENTIFIER ON
    GO
    
    
      -- TABLE: StaffDirectory
      -- TABLE: Location
      -- TABLE: Shot
      -- TABLE: Video
      -- TABLE: AgencyContact
      -- TABLE: Scene
      -- TABLE: InventoryItem
      -- TABLE: Agency

      -- CREATE DATABASE
      IF NOT EXISTS (SELECT * from sys.databases WHERE name = 'AirtableDigitalVideoProduction')
      BEGIN
          CREATE DATABASE [AirtableDigitalVideoProduction];
      END
        GO
        
     USE [AirtableDigitalVideoProduction];
GO
      
        -- TABLE: StaffDirectory
        -- ****** Object:  Table [dbo].[StaffDirectory]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StaffDirectory]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[StaffDirectory] (
          [StaffDirectoryId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Title] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Team] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Email] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Office] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [CellPhone] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [PropsEquipmentinPossession] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_StaffDirectory] PRIMARY KEY CLUSTERED
          (
            [StaffDirectoryId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Location
        -- ****** Object:  Table [dbo].[Location]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Location] (
          [LocationId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Address] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [MainContact] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Hours] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [CurrentStatus] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED
          (
            [LocationId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Shot
        -- ****** Object:  Table [dbo].[Shot]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Shot]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Shot] (
          [ShotId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Scene] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ShotSize] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Angle] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [CameraMovement] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Lens] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ShootDate] DATE NULL
          -- xs:date.
        ,
          [ShotNum] INT NULL
          -- INT32.
        ,
          [Name] DECIMAL(18,2) NULL
          -- xs:decimal.
        ,
          [Video] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Shot] PRIMARY KEY CLUSTERED
          (
            [ShotId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Video
        -- ****** Object:  Table [dbo].[Video]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Video]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Video] (
          [VideoId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [SlugName] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Writer] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Platform] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Format] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ReleaseDate] DATETIME NULL
          -- DATETIME.
        ,
          [ProjectStatus] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Editor] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [FactCheck] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ScriptURL] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [HostVOArtist] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ScriptDeadline] DATE NULL
          -- xs:date.
        ,
          [ShootDate] DATE NULL
          -- xs:date.
        ,
          [ReviewCutLatest] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Signoff] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [ShootPlan] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [LIVEURL] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [AssignedEditDate] DATE NULL
          -- xs:date.
        ,
          [RightsClearancesStatus] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Series] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [TargetLengthminutes] INT NULL
          -- SHORT.
        ,
          [Budget] INT NULL
          -- SHORT.
        ,
          [Spend] INT NULL
          -- SHORT.
        ,
          [Agency] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [RemainingBudget] INT NULL
          -- SHORT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED
          (
            [VideoId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: AgencyContact
        -- ****** Object:  Table [dbo].[AgencyContact]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AgencyContact]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[AgencyContact] (
          [AgencyContactId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Phone] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Email] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Team] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Agency] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_AgencyContact] PRIMARY KEY CLUSTERED
          (
            [AgencyContactId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Scene
        -- ****** Object:  Table [dbo].[Scene]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Scene]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Scene] (
          [SceneId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [SceneName] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Video] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Props] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Location] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Script] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [SceneNum] INT NULL
          -- INT32.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Scene] PRIMARY KEY CLUSTERED
          (
            [SceneId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: InventoryItem
        -- ****** Object:  Table [dbo].[InventoryItem]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InventoryItem]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[InventoryItem] (
          [InventoryItemId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Type] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Source] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Status] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Whocurrentlyhasit] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [Scenes] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [NextShootDate] DATE NULL
          -- xs:date.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_InventoryItem] PRIMARY KEY CLUSTERED
          (
            [InventoryItemId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO

        -- TABLE: Agency
        -- ****** Object:  Table [dbo].[Agency]   Script Date:  ******
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Agency]') AND type in (N'U')) 
        BEGIN
        CREATE TABLE [dbo].[Agency] (
          [AgencyId] NVARCHAR(150) NOT NULL
          -- TEXT.
        ,
          [Name] NVARCHAR(150) NULL
          -- TEXT.
        ,
          [createdTime] DATETIME NULL
          -- DATETIME.
        ,
        
        CONSTRAINT [PK_Agency] PRIMARY KEY CLUSTERED
          (
            [AgencyId] ASC
          )
        
        ) ON [PRIMARY]
        END
        GO


      
DECLARE @ObjectName NVARCHAR(100)

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'StaffDirectoryId' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [StaffDirectoryId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Title' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [Title] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [Title] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Team' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [Team] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [Team] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Email' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [Email] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [Email] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Office' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [Office] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [Office] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'CellPhone' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [CellPhone] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [CellPhone] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'PropsEquipmentinPossession' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [PropsEquipmentinPossession] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [PropsEquipmentinPossession] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 13
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'StaffDirectory'))
    BEGIN
            ALTER TABLE [dbo].[StaffDirectory] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[StaffDirectory] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'LocationId' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [LocationId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Address' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [Address] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [Address] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'MainContact' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [MainContact] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [MainContact] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Hours' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [Hours] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [Hours] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'CurrentStatus' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [CurrentStatus] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [CurrentStatus] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Location'))
    BEGIN
            ALTER TABLE [dbo].[Location] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Location] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShotId' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [ShotId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Scene' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [Scene] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [Scene] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShotSize' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [ShotSize] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [ShotSize] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Angle' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [Angle] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [Angle] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'CameraMovement' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [CameraMovement] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [CameraMovement] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Lens' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [Lens] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [Lens] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShootDate' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [ShootDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [ShootDate] DATE NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShotNum' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [ShotNum] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [ShotNum] INT NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [Name] DECIMAL(18,2) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [Name] DECIMAL(18,2) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Video' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [Video] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [Video] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 12
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Shot'))
    BEGIN
            ALTER TABLE [dbo].[Shot] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Shot] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'VideoId' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [VideoId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'SlugName' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [SlugName] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [SlugName] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Writer' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Writer] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Writer] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Platform' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Platform] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Platform] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Format' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Format] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Format] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ReleaseDate' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ReleaseDate] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ReleaseDate] DATETIME NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ProjectStatus' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ProjectStatus] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ProjectStatus] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Editor' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Editor] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Editor] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'FactCheck' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [FactCheck] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [FactCheck] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ScriptURL' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ScriptURL] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ScriptURL] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'HostVOArtist' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [HostVOArtist] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [HostVOArtist] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ScriptDeadline' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ScriptDeadline] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ScriptDeadline] DATE NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShootDate' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ShootDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ShootDate] DATE NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ReviewCutLatest' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ReviewCutLatest] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ReviewCutLatest] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Signoff' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Signoff] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Signoff] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'ShootPlan' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [ShootPlan] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [ShootPlan] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'LIVEURL' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [LIVEURL] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [LIVEURL] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'AssignedEditDate' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [AssignedEditDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [AssignedEditDate] DATE NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'RightsClearancesStatus' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [RightsClearancesStatus] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [RightsClearancesStatus] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Series' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Series] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Series] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'TargetLengthminutes' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [TargetLengthminutes] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [TargetLengthminutes] INT NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Budget' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Budget] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Budget] INT NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Spend' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Spend] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Spend] INT NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Agency' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [Agency] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [Agency] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'RemainingBudget' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [RemainingBudget] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [RemainingBudget] INT NULL;

    

	END

    
    -- COUNT: 28
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Video'))
    BEGIN
            ALTER TABLE [dbo].[Video] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Video] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'AgencyContactId' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [AgencyContactId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Phone' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [Phone] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [Phone] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Email' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [Email] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [Email] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Team' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [Team] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [Team] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Agency' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [Agency] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [Agency] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 8
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'AgencyContact'))
    BEGIN
            ALTER TABLE [dbo].[AgencyContact] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[AgencyContact] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'SceneId' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [SceneId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'SceneName' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [SceneName] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [SceneName] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Video' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [Video] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [Video] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Props' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [Props] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [Props] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Location' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [Location] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [Location] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Script' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [Script] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [Script] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'SceneNum' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [SceneNum] INT NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [SceneNum] INT NULL;

    

	END

    
    -- COUNT: 9
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Scene'))
    BEGIN
            ALTER TABLE [dbo].[Scene] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Scene] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'InventoryItemId' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [InventoryItemId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Type' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Type] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Type] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Source' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Source] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Source] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Status' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Status] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Status] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Whocurrentlyhasit' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Whocurrentlyhasit] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Whocurrentlyhasit] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Scenes' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [Scenes] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [Scenes] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'NextShootDate' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [NextShootDate] DATE NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [NextShootDate] DATE NULL;

    

	END

    
    -- COUNT: 10
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'InventoryItem'))
    BEGIN
            ALTER TABLE [dbo].[InventoryItem] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[InventoryItem] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'AgencyId' AND Object_ID = Object_ID(N'Agency'))
    BEGIN
            ALTER TABLE [dbo].[Agency] ADD [AgencyId] NVARCHAR(150) NULL;
    END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'Name' AND Object_ID = Object_ID(N'Agency'))
    BEGIN
            ALTER TABLE [dbo].[Agency] ADD [Name] NVARCHAR(150) NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Agency] ALTER COLUMN [Name] NVARCHAR(150) NULL;

    

	END

    
    -- COUNT: 5
    IF NOT EXISTS(SELECT * FROM sys.columns WHERE Name = N'createdTime' AND Object_ID = Object_ID(N'Agency'))
    BEGIN
            ALTER TABLE [dbo].[Agency] ADD [createdTime] DATETIME NULL;
    END

    
    ELSE
    BEGIN 


        ALTER TABLE [dbo].[Agency] ALTER COLUMN [createdTime] DATETIME NULL;

    

	END

    

              -- ****** KEYS FOR Table [dbo].[StaffDirectory]
          -- FK for PropsEquipmentinPossession :: 5 :: StaffDirectory :: InventoryItem
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StaffDirectory_PropsEquipmentinPossessionInventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[StaffDirectory]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StaffDirectory_InventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[StaffDirectory]'))
                ALTER TABLE [dbo].[StaffDirectory]  WITH CHECK ADD  CONSTRAINT [FK_StaffDirectory_PropsEquipmentinPossessionInventoryItem] FOREIGN KEY([PropsEquipmentinPossession])
                    REFERENCES [dbo].[InventoryItem] (InventoryItemId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_StaffDirectory_PropsEquipmentinPossessionInventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[StaffDirectory]'))
            ALTER TABLE [dbo].[StaffDirectory] CHECK CONSTRAINT [FK_StaffDirectory_PropsEquipmentinPossessionInventoryItem]
            GO
          

              -- ****** KEYS FOR Table [dbo].[Location]

              -- ****** KEYS FOR Table [dbo].[Shot]
          -- FK for Scene :: 0 :: Shot :: Scene
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_SceneScene]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_Scene]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
                ALTER TABLE [dbo].[Shot]  WITH CHECK ADD  CONSTRAINT [FK_Shot_SceneScene] FOREIGN KEY([Scene])
                    REFERENCES [dbo].[Scene] (SceneId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_SceneScene]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
            ALTER TABLE [dbo].[Shot] CHECK CONSTRAINT [FK_Shot_SceneScene]
            GO
          
          -- FK for Video :: 0 :: Shot :: Video
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_VideoVideo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_Video]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
                ALTER TABLE [dbo].[Shot]  WITH CHECK ADD  CONSTRAINT [FK_Shot_VideoVideo] FOREIGN KEY([Video])
                    REFERENCES [dbo].[Video] (VideoId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Shot_VideoVideo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Shot]'))
            ALTER TABLE [dbo].[Shot] CHECK CONSTRAINT [FK_Shot_VideoVideo]
            GO
          

              -- ****** KEYS FOR Table [dbo].[Video]
          -- FK for Writer :: 2 :: Video :: StaffDirectory
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_WriterStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_StaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
                ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_WriterStaffDirectory] FOREIGN KEY([Writer])
                    REFERENCES [dbo].[StaffDirectory] (StaffDirectoryId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_WriterStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
            ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_WriterStaffDirectory]
            GO
          
          -- FK for Editor :: 2 :: Video :: StaffDirectory
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_EditorStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_StaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
                ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_EditorStaffDirectory] FOREIGN KEY([Editor])
                    REFERENCES [dbo].[StaffDirectory] (StaffDirectoryId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_EditorStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
            ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_EditorStaffDirectory]
            GO
          
          -- FK for FactCheck :: 2 :: Video :: StaffDirectory
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_FactCheckStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_StaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
                ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_FactCheckStaffDirectory] FOREIGN KEY([FactCheck])
                    REFERENCES [dbo].[StaffDirectory] (StaffDirectoryId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_FactCheckStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
            ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_FactCheckStaffDirectory]
            GO
          
          -- FK for HostVOArtist :: 2 :: Video :: StaffDirectory
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_HostVOArtistStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_StaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
                ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_HostVOArtistStaffDirectory] FOREIGN KEY([HostVOArtist])
                    REFERENCES [dbo].[StaffDirectory] (StaffDirectoryId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_HostVOArtistStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
            ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_HostVOArtistStaffDirectory]
            GO
          
          -- FK for Agency :: 2 :: Video :: Agency
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_AgencyAgency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_Agency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
                ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_AgencyAgency] FOREIGN KEY([Agency])
                    REFERENCES [dbo].[Agency] (AgencyId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Video_AgencyAgency]') AND parent_object_id = OBJECT_ID(N'[dbo].[Video]'))
            ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_AgencyAgency]
            GO
          

              -- ****** KEYS FOR Table [dbo].[AgencyContact]
          -- FK for Agency :: 0 :: AgencyContact :: Agency
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AgencyContact_AgencyAgency]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgencyContact]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AgencyContact_Agency]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgencyContact]'))
                ALTER TABLE [dbo].[AgencyContact]  WITH CHECK ADD  CONSTRAINT [FK_AgencyContact_AgencyAgency] FOREIGN KEY([Agency])
                    REFERENCES [dbo].[Agency] (AgencyId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AgencyContact_AgencyAgency]') AND parent_object_id = OBJECT_ID(N'[dbo].[AgencyContact]'))
            ALTER TABLE [dbo].[AgencyContact] CHECK CONSTRAINT [FK_AgencyContact_AgencyAgency]
            GO
          

              -- ****** KEYS FOR Table [dbo].[Scene]
          -- FK for Video :: 2 :: Scene :: Video
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_VideoVideo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_Video]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
                ALTER TABLE [dbo].[Scene]  WITH CHECK ADD  CONSTRAINT [FK_Scene_VideoVideo] FOREIGN KEY([Video])
                    REFERENCES [dbo].[Video] (VideoId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_VideoVideo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
            ALTER TABLE [dbo].[Scene] CHECK CONSTRAINT [FK_Scene_VideoVideo]
            GO
          
          -- FK for Props :: 2 :: Scene :: InventoryItem
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_PropsInventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_InventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
                ALTER TABLE [dbo].[Scene]  WITH CHECK ADD  CONSTRAINT [FK_Scene_PropsInventoryItem] FOREIGN KEY([Props])
                    REFERENCES [dbo].[InventoryItem] (InventoryItemId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_PropsInventoryItem]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
            ALTER TABLE [dbo].[Scene] CHECK CONSTRAINT [FK_Scene_PropsInventoryItem]
            GO
          
          -- FK for Location :: 2 :: Scene :: Location
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
                ALTER TABLE [dbo].[Scene]  WITH CHECK ADD  CONSTRAINT [FK_Scene_Location] FOREIGN KEY([Location])
                    REFERENCES [dbo].[Location] (LocationId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Scene_Location]') AND parent_object_id = OBJECT_ID(N'[dbo].[Scene]'))
            ALTER TABLE [dbo].[Scene] CHECK CONSTRAINT [FK_Scene_Location]
            GO
          

              -- ****** KEYS FOR Table [dbo].[InventoryItem]
          -- FK for Whocurrentlyhasit :: 2 :: InventoryItem :: StaffDirectory
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_WhocurrentlyhasitStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_StaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
                ALTER TABLE [dbo].[InventoryItem]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItem_WhocurrentlyhasitStaffDirectory] FOREIGN KEY([Whocurrentlyhasit])
                    REFERENCES [dbo].[StaffDirectory] (StaffDirectoryId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_WhocurrentlyhasitStaffDirectory]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
            ALTER TABLE [dbo].[InventoryItem] CHECK CONSTRAINT [FK_InventoryItem_WhocurrentlyhasitStaffDirectory]
            GO
          
          -- FK for Scenes :: 2 :: InventoryItem :: Scene
          IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_ScenesScene]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
              IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_Scene]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
                ALTER TABLE [dbo].[InventoryItem]  WITH CHECK ADD  CONSTRAINT [FK_InventoryItem_ScenesScene] FOREIGN KEY([Scenes])
                    REFERENCES [dbo].[Scene] (SceneId)
                GO

          IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InventoryItem_ScenesScene]') AND parent_object_id = OBJECT_ID(N'[dbo].[InventoryItem]'))
            ALTER TABLE [dbo].[InventoryItem] CHECK CONSTRAINT [FK_InventoryItem_ScenesScene]
            GO
          

              -- ****** KEYS FOR Table [dbo].[Agency]


            SELECT 'Successful' as Value
            FROM (SELECT NULL AS FIELD) as Result
            FOR XML AUTO

          