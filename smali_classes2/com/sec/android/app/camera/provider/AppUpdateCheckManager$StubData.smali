.class Lcom/sec/android/app/camera/provider/AppUpdateCheckManager$StubData;
.super Ljava/lang/Object;
.source "AppUpdateCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/provider/AppUpdateCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StubData"
.end annotation


# instance fields
.field private productName:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getProductName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager$StubData;->productName:Ljava/lang/String;

    return-object p0
.end method

.method getVersionCode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager$StubData;->versionCode:Ljava/lang/String;

    return-object p0
.end method

.method setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager$StubData;->productName:Ljava/lang/String;

    return-void
.end method

.method setVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/provider/AppUpdateCheckManager$StubData;->versionCode:Ljava/lang/String;

    return-void
.end method
