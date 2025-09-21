.class public final synthetic Lcom/sec/android/app/camera/shootingmode/singletake/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeShutter$SingleTakeShutterAnimationListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/s;->a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    return-void
.end method


# virtual methods
.method public final onStopCaptureAnimationCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/s;->a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;->j(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeView;)V

    return-void
.end method
