.class final La0/u;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements La0/v;
.implements Lv0/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La0/v<",
        "TZ;>;",
        "Lv0/a$f;"
    }
.end annotation


# static fields
.field private static final f:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "La0/u<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lv0/c;

.field private b:La0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/v<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, La0/u$a;

    invoke-direct {v0}, La0/u$a;-><init>()V

    const/16 v1, 0x14

    .line 2
    invoke-static {v1, v0}, Lv0/a;->d(ILv0/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    sput-object v0, La0/u;->f:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lv0/c;->a()Lv0/c;

    move-result-object v0

    iput-object v0, p0, La0/u;->a:Lv0/c;

    return-void
.end method

.method private d(La0/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TZ;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, La0/u;->d:Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La0/u;->c:Z

    .line 3
    iput-object p1, p0, La0/u;->b:La0/v;

    return-void
.end method

.method static e(La0/v;)La0/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "La0/v<",
            "TZ;>;)",
            "La0/u<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, La0/u;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/u;

    invoke-static {v0}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/u;

    .line 2
    invoke-direct {v0, p0}, La0/u;->d(La0/v;)V

    return-object v0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La0/u;->b:La0/v;

    .line 2
    sget-object v0, La0/u;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget-object p0, p0, La0/u;->b:La0/v;

    invoke-interface {p0}, La0/v;->a()I

    move-result p0

    return p0
.end method

.method public b()Lv0/c;
    .locals 0

    iget-object p0, p0, La0/u;->a:Lv0/c;

    return-object p0
.end method

.method public c()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, La0/u;->b:La0/v;

    invoke-interface {p0}, La0/v;->c()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method declared-synchronized g()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La0/u;->a:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    .line 2
    iget-boolean v0, p0, La0/u;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La0/u;->c:Z

    .line 4
    iget-boolean v0, p0, La0/u;->d:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, La0/u;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already unlocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    iget-object p0, p0, La0/u;->b:La0/v;

    invoke-interface {p0}, La0/v;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized recycle()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, La0/u;->a:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La0/u;->d:Z

    .line 3
    iget-boolean v0, p0, La0/u;->c:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, La0/u;->b:La0/v;

    invoke-interface {v0}, La0/v;->recycle()V

    .line 5
    invoke-direct {p0}, La0/u;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
