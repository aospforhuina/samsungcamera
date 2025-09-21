.class public final synthetic Lcom/sec/android/app/camera/shootingmode/common/manager/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;

.field public final synthetic b:I

.field public final synthetic c:[J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->a:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->b:I

    iput-object p3, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->c:[J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->a:Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->b:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/j;->c:[J

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;->a(Lcom/sec/android/app/camera/shootingmode/common/manager/SceneDetectionCallbackManager;I[J)V

    return-void
.end method
