.class public La3/a;
.super Ly2/u;
.source "PayParsedResult.java"


# static fields
.field private static final e:[Ly2/z;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:La3/d;

.field private final d:Lx2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ly2/z;

    new-instance v1, Ly2/j0;

    invoke-direct {v1}, Ly2/j0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ly2/k0;

    invoke-direct {v1}, Ly2/k0;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, La3/a;->e:[Ly2/z;

    return-void
.end method

.method public constructor <init>(Lx2/b;La3/d;)V
    .locals 1

    .line 1
    sget-object v0, Ly2/v;->r:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 2
    iput-object p2, p0, La3/a;->c:La3/d;

    .line 3
    iput-object p1, p0, La3/a;->d:Lx2/b;

    .line 4
    invoke-virtual {p1}, Lx2/b;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La3/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La3/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public e()La3/c;
    .locals 2

    .line 1
    sget-object v0, La3/c;->b:La3/c;

    iget-object v1, p0, La3/a;->c:La3/d;

    invoke-virtual {v0, v1}, La3/c;->a(La3/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, La3/c;->c:La3/c;

    iget-object v1, p0, La3/a;->c:La3/d;

    invoke-virtual {v0, v1}, La3/c;->a(La3/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, La3/c;->d:La3/c;

    iget-object p0, p0, La3/a;->c:La3/d;

    invoke-virtual {v0, p0}, La3/c;->a(La3/d;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object p0, La3/c;->f:La3/c;

    return-object p0
.end method

.method public f()La3/d;
    .locals 0

    iget-object p0, p0, La3/a;->c:La3/d;

    return-object p0
.end method

.method public g()Z
    .locals 6

    .line 1
    sget-object v0, La3/a;->e:[Ly2/z;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget-object v5, p0, La3/a;->d:Lx2/b;

    invoke-virtual {v4, v5}, Ly2/z;->j(Lx2/b;)Ly2/u;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
