.class public final Lv0/a;
.super Ljava/lang/Object;
.source "FactoryPools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv0/a$e;,
        Lv0/a$f;,
        Lv0/a$g;,
        Lv0/a$d;
    }
.end annotation


# static fields
.field private static final a:Lv0/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv0/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv0/a$a;

    invoke-direct {v0}, Lv0/a$a;-><init>()V

    sput-object v0, Lv0/a;->a:Lv0/a$g;

    return-void
.end method

.method private static a(Landroidx/core/util/Pools$Pool;Lv0/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lv0/a$f;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lv0/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lv0/a;->c()Lv0/a$g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lv0/a;->b(Landroidx/core/util/Pools$Pool;Lv0/a$d;Lv0/a$g;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroidx/core/util/Pools$Pool;Lv0/a$d;Lv0/a$g;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;",
            "Lv0/a$d<",
            "TT;>;",
            "Lv0/a$g<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lv0/a$e;

    invoke-direct {v0, p0, p1, p2}, Lv0/a$e;-><init>(Landroidx/core/util/Pools$Pool;Lv0/a$d;Lv0/a$g;)V

    return-object v0
.end method

.method private static c()Lv0/a$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lv0/a$g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lv0/a;->a:Lv0/a$g;

    return-object v0
.end method

.method public static d(ILv0/a$d;)Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lv0/a$f;",
            ">(I",
            "Lv0/a$d<",
            "TT;>;)",
            "Landroidx/core/util/Pools$Pool<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-static {v0, p1}, Lv0/a;->a(Landroidx/core/util/Pools$Pool;Lv0/a$d;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method

.method public static e()Landroidx/core/util/Pools$Pool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lv0/a;->f(I)Landroidx/core/util/Pools$Pool;

    move-result-object v0

    return-object v0
.end method

.method public static f(I)Landroidx/core/util/Pools$Pool;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v0, p0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    new-instance p0, Lv0/a$b;

    invoke-direct {p0}, Lv0/a$b;-><init>()V

    new-instance v1, Lv0/a$c;

    invoke-direct {v1}, Lv0/a$c;-><init>()V

    invoke-static {v0, p0, v1}, Lv0/a;->b(Landroidx/core/util/Pools$Pool;Lv0/a$d;Lv0/a$g;)Landroidx/core/util/Pools$Pool;

    move-result-object p0

    return-object p0
.end method
