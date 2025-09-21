.class public final Lx/h;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final e:Lx/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h$b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lx/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/h$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private volatile d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx/h$a;

    invoke-direct {v0}, Lx/h$a;-><init>()V

    sput-object v0, Lx/h;->e:Lx/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lx/h$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lx/h$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lu0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx/h;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lx/h;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/h$b;

    iput-object p1, p0, Lx/h;->b:Lx/h$b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lx/h$b;)Lx/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lx/h$b<",
            "TT;>;)",
            "Lx/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lx/h;

    invoke-direct {v0, p0, p1, p2}, Lx/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lx/h$b;)V

    return-object v0
.end method

.method private static b()Lx/h$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lx/h$b<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lx/h;->e:Lx/h$b;

    return-object v0
.end method

.method private d()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lx/h;->d:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lx/h;->c:Ljava/lang/String;

    sget-object v1, Lx/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lx/h;->d:[B

    .line 3
    :cond_0
    iget-object p0, p0, Lx/h;->d:[B

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lx/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lx/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lx/h;

    invoke-static {}, Lx/h;->b()Lx/h$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lx/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lx/h$b;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Object;)Lx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lx/h<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lx/h;

    invoke-static {}, Lx/h;->b()Lx/h$b;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lx/h;-><init>(Ljava/lang/String;Ljava/lang/Object;Lx/h$b;)V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lx/h;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lx/h;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lx/h;

    .line 3
    iget-object p0, p0, Lx/h;->c:Ljava/lang/String;

    iget-object p1, p1, Lx/h;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lx/h;->b:Lx/h$b;

    invoke-direct {p0}, Lx/h;->d()[B

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lx/h$b;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lx/h;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
