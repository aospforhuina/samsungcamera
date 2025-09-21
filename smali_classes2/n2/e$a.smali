.class Ln2/e$a;
.super Ln2/w;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln2/e;->e(Z)Ln2/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ln2/e;


# direct methods
.method constructor <init>(Ln2/e;)V
    .locals 0

    iput-object p1, p0, Ln2/e$a;->a:Ln2/e;

    invoke-direct {p0}, Ln2/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ln2/e$a;->e(Lu2/a;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Ln2/e$a;->f(Lu2/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(Lu2/a;)Ljava/lang/Double;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object p0

    sget-object v0, Lu2/b;->m:Lu2/b;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lu2/a;->C()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public f(Lu2/c;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ln2/e;->d(D)V

    .line 4
    invoke-virtual {p1, p2}, Lu2/c;->M(Ljava/lang/Number;)Lu2/c;

    return-void
.end method
