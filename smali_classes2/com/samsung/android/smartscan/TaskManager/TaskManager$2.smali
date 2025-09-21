.class Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/smartscan/TaskManager/TaskManager;->executeTaskRecursive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-static {v0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$100(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;->executeTask()Z

    .line 2
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-static {v0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$200(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$102(Lcom/samsung/android/smartscan/TaskManager/TaskManager;Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;)Lcom/samsung/android/smartscan/TaskManager/Tasks/AbstractTask;

    .line 4
    iget-object v0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-static {v0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$200(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5
    iget-object p0, p0, Lcom/samsung/android/smartscan/TaskManager/TaskManager$2;->this$0:Lcom/samsung/android/smartscan/TaskManager/TaskManager;

    invoke-static {p0}, Lcom/samsung/android/smartscan/TaskManager/TaskManager;->access$000(Lcom/samsung/android/smartscan/TaskManager/TaskManager;)V

    return-void
.end method
