.class public final Le3/a$a;
.super Ljava/lang/Object;
.source "FeedbackRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Le3/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Le3/a;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le3/a;->a()Le3/a;

    move-result-object p0

    if-nez p0, :cond_0

    const-class p0, Le3/a;

    invoke-static {p0}, Lkotlin/jvm/internal/x;->b(Ljava/lang/Class;)Lz6/c;

    move-result-object p0

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Le3/a;->c:Le3/a$a;

    new-instance v0, Le3/a;

    sget-object v1, Lc3/c;->a:Lc3/c;

    invoke-virtual {v1, p1}, Lc3/c;->a(Landroid/content/Context;)Lc3/a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le3/a;-><init>(Lc3/a;Lkotlin/jvm/internal/g;)V

    invoke-static {v0}, Le3/a;->b(Le3/a;)V

    .line 4
    sget-object p1, Lk6/q;->a:Lk6/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 6
    :cond_0
    :goto_0
    invoke-static {}, Le3/a;->a()Le3/a;

    move-result-object p0

    return-object p0
.end method
