.class public final synthetic Lcom/sec/android/app/camera/watch/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

.field public final synthetic b:D


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/d;->a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    iput-wide p2, p0, Lcom/sec/android/app/camera/watch/d;->b:D

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/d;->a:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    iget-wide v1, p0, Lcom/sec/android/app/camera/watch/d;->b:D

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;->R0(Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;D)V

    return-void
.end method
