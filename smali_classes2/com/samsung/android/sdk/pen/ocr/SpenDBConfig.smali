.class Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;
.super Ljava/lang/Object;
.source "SpenDBConfig.java"


# instance fields
.field private mDbType:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

.field private mLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/ocr/SpenDBType;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/samsung/android/sdk/pen/ocr/SpenDBType;->OCR:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mDbType:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mLanguage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDBType()Lcom/samsung/android/sdk/pen/ocr/SpenDBType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mDbType:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    return-object p0
.end method

.method public final getDBTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mDbType:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setDBType(Lcom/samsung/android/sdk/pen/ocr/SpenDBType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mDbType:Lcom/samsung/android/sdk/pen/ocr/SpenDBType;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenDBConfig;->mLanguage:Ljava/lang/String;

    return-void
.end method
