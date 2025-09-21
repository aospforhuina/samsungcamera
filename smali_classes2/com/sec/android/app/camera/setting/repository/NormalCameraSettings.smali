.class Lcom/sec/android/app/camera/setting/repository/NormalCameraSettings;
.super Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;
.source "NormalCameraSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NormalCameraSettings"


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;)V

    const-string p0, "NormalCameraSettings"

    const-string p1, "NormalCameraSettings created"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method isResizableMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
