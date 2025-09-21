.class public final synthetic Lcom/sec/android/app/camera/watch/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/e;->a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    iput p2, p0, Lcom/sec/android/app/camera/watch/e;->b:F

    iput p3, p0, Lcom/sec/android/app/camera/watch/e;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/e;->a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    iget v1, p0, Lcom/sec/android/app/camera/watch/e;->b:F

    iget p0, p0, Lcom/sec/android/app/camera/watch/e;->c:F

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->S0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;FF)V

    return-void
.end method
