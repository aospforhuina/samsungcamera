.class public final synthetic Lcom/sec/android/app/camera/executor/f2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/f2;->a:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/f2;->a:Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;

    check-cast p1, Lcom/sec/android/app/camera/executor/ActionStateSet$ActionState;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;->t(Lcom/sec/android/app/camera/executor/CameraExecutorManagerImpl;Lcom/sec/android/app/camera/executor/ActionStateSet$ActionState;)Z

    move-result p0

    return p0
.end method
