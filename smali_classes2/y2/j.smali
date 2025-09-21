.class public final Ly2/j;
.super Ly2/u;
.source "EmailAddressParsedResult.java"


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1
    invoke-direct/range {v1 .. v6}, Ly2/j;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Ly2/v;->b:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 3
    iput-object p1, p0, Ly2/j;->b:[Ljava/lang/String;

    .line 4
    iput-object p2, p0, Ly2/j;->c:[Ljava/lang/String;

    .line 5
    iput-object p3, p0, Ly2/j;->d:[Ljava/lang/String;

    .line 6
    iput-object p4, p0, Ly2/j;->e:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Ly2/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Ly2/j;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object v1, p0, Ly2/j;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    iget-object v1, p0, Ly2/j;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->d([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    iget-object v1, p0, Ly2/j;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    iget-object p0, p0, Ly2/j;->f:Ljava/lang/String;

    invoke-static {p0, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/j;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/j;->f:Ljava/lang/String;

    return-object p0
.end method

.method public g()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/j;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/j;->e:Ljava/lang/String;

    return-object p0
.end method

.method public i()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/j;->b:[Ljava/lang/String;

    return-object p0
.end method
