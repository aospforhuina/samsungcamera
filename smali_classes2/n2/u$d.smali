.class final enum Ln2/u$d;
.super Ln2/u;
.source "ToNumberPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ln2/u;-><init>(Ljava/lang/String;ILn2/u$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu2/a;)Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0, p1}, Ln2/u$d;->b(Lu2/a;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public b(Lu2/a;)Ljava/math/BigDecimal;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ln2/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; at path "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu2/a;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ln2/o;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
