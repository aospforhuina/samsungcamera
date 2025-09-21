.class public Lc5/d;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static a:Lc5/b;

.field private static b:Lv4/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILv4/c;)Lc5/b;
    .locals 2

    .line 1
    sget-object v0, Lc5/d;->a:Lc5/b;

    if-eqz v0, :cond_0

    sget-object v0, Lc5/d;->b:Lv4/c;

    invoke-static {p0, v0, p2}, Lk5/d;->m(Landroid/content/Context;Lv4/c;Lv4/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    const-class v0, Lc5/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc5/d;->b:Lv4/c;

    invoke-static {p0, v1, p2}, Lk5/d;->m(Landroid/content/Context;Lv4/c;Lv4/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p2}, Lc5/e;->a(Lv4/c;)Lc5/b;

    move-result-object v1

    sput-object v1, Lc5/d;->a:Lc5/b;

    .line 5
    sput-object p2, Lc5/d;->b:Lv4/c;

    .line 6
    :cond_1
    sget-object v1, Lc5/d;->a:Lc5/b;

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Le5/b;

    invoke-direct {p1, p0, p2}, Le5/b;-><init>(Landroid/content/Context;Lv4/c;)V

    sput-object p1, Lc5/d;->a:Lc5/b;

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ld5/b;

    invoke-direct {p1, p0, p2}, Ld5/b;-><init>(Landroid/content/Context;Lv4/c;)V

    sput-object p1, Lc5/d;->a:Lc5/b;

    .line 9
    :goto_0
    sget-object p0, Lc5/d;->a:Lc5/b;

    invoke-static {p0, p2}, Lc5/e;->b(Lc5/b;Lv4/c;)V

    .line 10
    sput-object p2, Lc5/d;->b:Lv4/c;

    .line 11
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_5
    sget-object p0, Lc5/d;->a:Lc5/b;

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
