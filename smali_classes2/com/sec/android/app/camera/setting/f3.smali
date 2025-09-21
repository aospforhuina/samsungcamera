.class public final synthetic Lcom/sec/android/app/camera/setting/f3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/f3;->a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    return-void
.end method


# virtual methods
.method public final onDimChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/f3;->a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->e(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V

    return-void
.end method
