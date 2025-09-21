.class Lcom/samsung/android/rapidmomentengine/engines/EngineDID;
.super La4/b;
.source "EngineDID.java"

# interfaces
.implements La4/a;


# static fields
.field private static final b:Ljava/lang/String; = "EngineDID"


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, La4/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->a:Z

    :try_start_0
    const-string v0, "rm_rapidmoments_jni_a"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabling DID as Exception Occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static f(J)J
    .locals 6

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, p0, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    add-long/2addr v2, v4

    const/4 v4, 0x1

    shr-long/2addr p0, v4

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private g([J[J)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    .line 1
    aget-wide v2, p1, p0

    aget-wide v4, p2, p0

    xor-long/2addr v2, v4

    .line 2
    invoke-static {v2, v3}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->f(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "did hash hamming : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method private native getDIDHashNV21([BII)[J
.end method

.method private static h([J)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, p0, v2

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lz3/g;Lz3/g;)Z
    .locals 2

    iget-object p1, p1, Lz3/g;->c:[J

    iget-object p2, p2, Lz3/g;->c:[J

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->g([J[J)J

    move-result-wide p0

    const-wide/16 v0, 0x5

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    const-string v1, "deinit E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, La4/b;->b()V

    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "deinit X"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "EngineDID"

    return-object p0
.end method

.method public d(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    const-string v1, "init E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2}, La4/b;->d(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "init X"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Lz3/c;)Lz3/g;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->b:Ljava/lang/String;

    const-string v1, "process E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->a:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lz3/c;->b()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lz3/c;->h()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lz3/c;->e()I

    move-result p1

    .line 6
    new-instance v3, Lz3/g;

    invoke-direct {v3}, Lz3/g;-><init>()V

    .line 7
    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->getDIDHashNV21([BII)[J

    move-result-object p0

    iput-object p0, v3, Lz3/g;->c:[J

    .line 8
    invoke-static {p0}, Lcom/samsung/android/rapidmomentengine/engines/EngineDID;->h([J)V

    const-string p0, "process X"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method
