.class Lq2/n$r;
.super Ln2/w;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln2/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/n$r;->e(Lu2/a;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lq2/n$r;->f(Lu2/c;Ljava/util/Calendar;)V

    return-void
.end method

.method public e(Lu2/a;)Ljava/util/Calendar;
    .locals 8

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
    invoke-virtual {p1}, Lu2/a;->b()V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object p0

    sget-object v0, Lu2/b;->d:Lu2/b;

    if-eq p0, v0, :cond_7

    .line 5
    invoke-virtual {p1}, Lu2/a;->F()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Lu2/a;->D()I

    move-result v0

    const-string/jumbo v7, "year"

    .line 7
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v7, "month"

    .line 8
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    const-string v7, "dayOfMonth"

    .line 9
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v3, v0

    goto :goto_0

    :cond_4
    const-string v7, "hourOfDay"

    .line 10
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v0

    goto :goto_0

    :cond_5
    const-string v7, "minute"

    .line 11
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v0

    goto :goto_0

    :cond_6
    const-string v7, "second"

    .line 12
    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v6, v0

    goto :goto_0

    .line 13
    :cond_7
    invoke-virtual {p1}, Lu2/a;->o()V

    .line 14
    new-instance p0, Ljava/util/GregorianCalendar;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object p0
.end method

.method public f(Lu2/c;Ljava/util/Calendar;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lu2/c;->f()Lu2/c;

    const-string/jumbo p0, "year"

    .line 3
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/4 p0, 0x1

    .line 4
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    const-string p0, "month"

    .line 5
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/4 p0, 0x2

    .line 6
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    const-string p0, "dayOfMonth"

    .line 7
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/4 p0, 0x5

    .line 8
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    const-string p0, "hourOfDay"

    .line 9
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/16 p0, 0xb

    .line 10
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    const-string p0, "minute"

    .line 11
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/16 p0, 0xc

    .line 12
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    const-string p0, "second"

    .line 13
    invoke-virtual {p1, p0}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    const/16 p0, 0xd

    .line 14
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lu2/c;->K(J)Lu2/c;

    .line 15
    invoke-virtual {p1}, Lu2/c;->o()Lu2/c;

    return-void
.end method
