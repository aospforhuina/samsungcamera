.class public final synthetic Lcom/sec/android/app/camera/setting/repository/rs;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/setting/repository/ValueGetter;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/repository/rs;->a:Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    return-void
.end method


# virtual methods
.method public final get()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/rs;->a:Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/repository/CameraSettingsImpl;->getBackSuperSteadyWideResolution()I

    move-result p0

    return p0
.end method
