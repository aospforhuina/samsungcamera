.class public final synthetic Lcom/sec/android/app/camera/setting/q3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/ShootingMethodFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/ShootingMethodFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/q3;->a:Lcom/sec/android/app/camera/setting/ShootingMethodFragment;

    return-void
.end method


# virtual methods
.method public final onDimChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/q3;->a:Lcom/sec/android/app/camera/setting/ShootingMethodFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/setting/ShootingMethodFragment;->S(Lcom/sec/android/app/camera/setting/ShootingMethodFragment;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V

    return-void
.end method
