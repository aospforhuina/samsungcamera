.class public final Lc/e;
.super Ljava/lang/Object;
.source "XMPMetaFactory.java"


# static fields
.field private static a:Lc/g;

.field private static b:Lc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld/k;

    invoke-direct {v0}, Ld/k;-><init>()V

    sput-object v0, Lc/e;->a:Lc/g;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lc/e;->b:Lc/i;

    return-void
.end method

.method private static a(Lc/d;)V
    .locals 1

    .line 1
    instance-of p0, p0, Ld/h;

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The serializing service works onlywith the XMPMeta implementation of this library"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Lc/d;
    .locals 1

    new-instance v0, Ld/h;

    invoke-direct {v0}, Ld/h;-><init>()V

    return-object v0
.end method

.method public static c()Lc/g;
    .locals 1

    sget-object v0, Lc/e;->a:Lc/g;

    return-object v0
.end method

.method public static declared-synchronized d()Lc/i;
    .locals 3

    const-class v0, Lc/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lc/e;->b:Lc/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    new-instance v1, Lc/e$a;

    invoke-direct {v1}, Lc/e$a;-><init>()V

    sput-object v1, Lc/e;->b:Lc/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 4
    :cond_0
    :goto_0
    sget-object v1, Lc/e;->b:Lc/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(Lc/d;Lf/d;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e;->a(Lc/d;)V

    .line 2
    check-cast p0, Ld/h;

    invoke-static {p0, p1}, Ld/l;->b(Ld/h;Lf/d;)[B

    move-result-object p0

    return-object p0
.end method
