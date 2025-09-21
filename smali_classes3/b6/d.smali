.class public Lb6/d;
.super Ljava/lang/Object;
.source "SingleThreadExecutor.java"

# interfaces
.implements Lb6/c;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lb6/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb6/d$a;

    invoke-direct {v0, p0}, Lb6/d$a;-><init>(Lb6/d;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sput-object p0, Lb6/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static b()Lb6/c;
    .locals 1

    .line 1
    sget-object v0, Lb6/d;->b:Lb6/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb6/d;

    invoke-direct {v0}, Lb6/d;-><init>()V

    sput-object v0, Lb6/d;->b:Lb6/d;

    .line 3
    :cond_0
    sget-object v0, Lb6/d;->b:Lb6/d;

    return-object v0
.end method


# virtual methods
.method public a(Lb6/b;)V
    .locals 2

    sget-object v0, Lb6/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lb6/d$b;

    invoke-direct {v1, p0, p1}, Lb6/d$b;-><init>(Lb6/d;Lb6/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
