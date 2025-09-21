.class public La0/k$d;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private final a:La0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/l<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:Lq0/g;

.field final synthetic c:La0/k;


# direct methods
.method constructor <init>(La0/k;Lq0/g;La0/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/g;",
            "La0/l<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, La0/k$d;->c:La0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La0/k$d;->b:Lq0/g;

    .line 3
    iput-object p3, p0, La0/k$d;->a:La0/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La0/k$d;->c:La0/k;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, La0/k$d;->a:La0/l;

    iget-object p0, p0, La0/k$d;->b:Lq0/g;

    invoke-virtual {v1, p0}, La0/l;->r(Lq0/g;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
