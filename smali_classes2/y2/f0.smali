.class public final Ly2/f0;
.super Ly2/u;
.source "TelParsedResult.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ly2/v;->k:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 2
    iput-object p1, p0, Ly2/f0;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ly2/f0;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Ly2/f0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, Ly2/f0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3
    iget-object p0, p0, Ly2/f0;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Ly2/u;->c(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/f0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/f0;->c:Ljava/lang/String;

    return-object p0
.end method
