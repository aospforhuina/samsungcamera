.class final Lcom/samsung/android/smartscan/SmartScanRectify$1;
.super Ljava/lang/Object;
.source "SmartScanRectify.java"

# interfaces
.implements Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartscan/SmartScanRectify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecuteTask(Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Init:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    if-ne p1, p0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$000()Z

    move-result p0

    .line 3
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitDone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$300()Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$300()Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;->onFinishInit(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 11
    :cond_0
    sget-object p0, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;->Deinit:Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask$TaskType;

    if-ne p1, p0, :cond_1

    .line 12
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    monitor-enter p0

    .line 13
    :try_start_2
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 15
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$200()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InitDone = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$400()Z

    move-result p0

    .line 18
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$300()Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    invoke-static {}, Lcom/samsung/android/smartscan/SmartScanRectify;->access$300()Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/samsung/android/smartscan/SmartScanRectify$OnSmartScanEventListener;->onFinishDeInit(Z)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 20
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
