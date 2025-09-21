.class public Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;
.super Ljava/lang/Object;
.source "SceneStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/SceneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field protected final a:Ljava/nio/ByteBuffer;

.field protected b:J

.field protected c:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->a:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide p2, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected b(Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->c:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->c:Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;->a()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$Task;->a()V

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/samsung/android/camera/core2/util/SceneStateManager$TaskCallback;->b()V

    :cond_1
    return-void
.end method
