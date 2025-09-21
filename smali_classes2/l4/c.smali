.class public Ll4/c;
.super Ljava/lang/Object;
.source "OCRServiceCreator.java"


# instance fields
.field private a:Ll4/a;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private final d:Ljava/util/concurrent/locks/Condition;

.field private e:Z

.field private final f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Ll4/c;->d:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ll4/c;->e:Z

    .line 5
    new-instance v0, Ll4/c$a;

    invoke-direct {v0, p0}, Ll4/c$a;-><init>(Ll4/c;)V

    iput-object v0, p0, Ll4/c;->f:Landroid/content/ServiceConnection;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll4/c;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ll4/c;Ll4/a;)Ll4/a;
    .locals 0

    iput-object p1, p0, Ll4/c;->a:Ll4/a;

    return-object p1
.end method

.method static synthetic b(Ll4/c;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic c(Ll4/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Ll4/c;->e:Z

    return p1
.end method

.method static synthetic d(Ll4/c;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Ll4/c;->f:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic e(Ll4/c;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    iget-object p0, p0, Ll4/c;->d:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method private h()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    const-string v0, "sdk.ocr.service.intent.action.BIND_OCR_SERVICE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.sdk.ocr"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close() : connected? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ll4/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OCRServiceCreator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-boolean v0, p0, Ll4/c;->e:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ll4/c;->b:Landroid/content/Context;

    iget-object v1, p0, Ll4/c;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    iget-object v0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Ll4/c;->b:Landroid/content/Context;

    return-void

    :catchall_0
    move-exception v0

    .line 7
    iget-object p0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 8
    throw v0
.end method

.method public g()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v0, p0, Ll4/c;->e:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ll4/c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ll4/c;->h()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Ll4/c;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4
    :goto_0
    iget-boolean v0, p0, Ll4/c;->e:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Ll4/c;->d:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :goto_1
    iget-object p0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 8
    :goto_3
    iget-object p0, p0, Ll4/c;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw v0
.end method

.method public i()Ll4/a;
    .locals 0

    iget-object p0, p0, Ll4/c;->a:Ll4/a;

    return-object p0
.end method
