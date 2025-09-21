.class Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;
.super Landroid/os/Handler;
.source "SecEffectProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/effect/SecEffectProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

.field final synthetic this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/effect/SecEffectProcessor;Lcom/samsung/android/camera/effect/SecEffectProcessor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->mEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECIMAGING/J"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->mEffectProcessor:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$000(Lcom/samsung/android/camera/effect/SecEffectProcessor;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string p0, "SecEffectProcessor went away with unhandled events"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    const-string v3, "handleMessage: "

    const-string v4, "mWatermarkInfo is existed : "

    const-string v5, " "

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown message type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$200(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/WatermarkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v4}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$400(Lcom/samsung/android/camera/effect/SecEffectProcessor;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$300(Lcom/samsung/android/camera/effect/SecEffectProcessor;)I

    move-result p0

    invoke-interface {v0, v2, v4, v6, p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;->onPictureTaken(ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$200(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/WatermarkInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$300(Lcom/samsung/android/camera/effect/SecEffectProcessor;)I

    move-result p0

    invoke-interface {v0, v2, v4, p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;->onPictureTaken(ILjava/nio/ByteBuffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 19
    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$402(Lcom/samsung/android/camera/effect/SecEffectProcessor;[B)[B

    goto :goto_0

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {v0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 21
    iget-object p0, p0, Lcom/samsung/android/camera/effect/SecEffectProcessor$EventHandler;->this$0:Lcom/samsung/android/camera/effect/SecEffectProcessor;

    invoke-static {p0}, Lcom/samsung/android/camera/effect/SecEffectProcessor;->access$100(Lcom/samsung/android/camera/effect/SecEffectProcessor;)Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Lcom/samsung/android/camera/effect/SecEffectProcessor$EffectProcessorListener;->onInfo(I)V

    :cond_5
    :goto_0
    return-void
.end method
