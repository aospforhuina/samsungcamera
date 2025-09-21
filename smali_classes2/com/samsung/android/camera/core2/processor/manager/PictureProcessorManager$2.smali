.class Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$2;
.super Ljava/lang/Object;
.source "PictureProcessorManager.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$2;->this$0:Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostProcessorSequenceCountChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager$2;->this$0:Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;

    invoke-static {p0}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->b(Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;)Lcom/samsung/android/camera/core2/processor/manager/ProcessorManagerInterface$PPPStatusCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/core2/processor/ProcessorStatusCallback;->onPostProcessorSequenceCountChanged(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/camera/core2/processor/manager/PictureProcessorManager;->d()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t invoke onPostProcessorSequenceCountChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
