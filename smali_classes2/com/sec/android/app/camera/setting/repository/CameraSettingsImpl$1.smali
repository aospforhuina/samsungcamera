.class Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl$1;
.super Ljava/lang/Object;
.source "CameraSettingsImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;
    .locals 0

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;->getInstance()Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl$1;->newArray(I)[Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    move-result-object p0

    return-object p0
.end method
