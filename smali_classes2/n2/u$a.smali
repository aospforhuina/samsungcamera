.class final enum Ln2/u$a;
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

    invoke-virtual {p0, p1}, Ln2/u$a;->b(Lu2/a;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public b(Lu2/a;)Ljava/lang/Double;
    .locals 0

    invoke-virtual {p1}, Lu2/a;->C()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
