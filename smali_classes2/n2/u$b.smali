.class final enum Ln2/u$b;
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
.method public a(Lu2/a;)Ljava/lang/Number;
    .locals 0

    new-instance p0, Lp2/g;

    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lp2/g;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
