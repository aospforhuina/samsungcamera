.class public final synthetic Lcom/sec/android/app/camera/setting/p4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/WatermarkFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/p4;->a:Lcom/sec/android/app/camera/setting/WatermarkFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/p4;->a:Lcom/sec/android/app/camera/setting/WatermarkFragment;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/WatermarkFragment;->T(Lcom/sec/android/app/camera/setting/WatermarkFragment;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method
