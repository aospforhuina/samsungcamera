.class public Ld/g;
.super Ljava/lang/Object;
.source "XMPDateTimeImpl.java"

# interfaces
.implements Lc/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:I

.field private k:Ljava/util/TimeZone;

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ld/g;->a:I

    .line 3
    iput v0, p0, Ld/g;->b:I

    .line 4
    iput v0, p0, Ld/g;->c:I

    .line 5
    iput v0, p0, Ld/g;->d:I

    .line 6
    iput v0, p0, Ld/g;->f:I

    .line 7
    iput v0, p0, Ld/g;->g:I

    const-string v0, "UTC"

    .line 8
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Ld/g;->k:Ljava/util/TimeZone;

    .line 9
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    .line 11
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    check-cast v1, Ljava/util/GregorianCalendar;

    .line 13
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Ld/g;->a:I

    const/4 v0, 0x2

    .line 17
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Ld/g;->b:I

    const/4 p1, 0x5

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Ld/g;->c:I

    const/16 p1, 0xb

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Ld/g;->d:I

    const/16 p1, 0xc

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Ld/g;->f:I

    const/16 p1, 0xd

    .line 21
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    iput p1, p0, Ld/g;->g:I

    const/16 p1, 0xe

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    iput p1, p0, Ld/g;->l:I

    .line 23
    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    iput-object p1, p0, Ld/g;->k:Ljava/util/TimeZone;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ld/c;->a(Lc/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Ld/g;->l:I

    return p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld/g;->d()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    check-cast p1, Lc/a;

    .line 2
    invoke-interface {p1}, Lc/a;->d()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x2

    if-eqz v2, :cond_0

    .line 3
    rem-long/2addr v0, v3

    long-to-int p0, v0

    return p0

    .line 4
    :cond_0
    iget p0, p0, Ld/g;->l:I

    invoke-interface {p1}, Lc/a;->c()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-long p0, p0

    .line 5
    rem-long/2addr p0, v3

    long-to-int p0, p0

    return p0
.end method

.method public d()Ljava/util/Calendar;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3
    iget-object v1, p0, Ld/g;->k:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    iget v1, p0, Ld/g;->a:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 5
    iget v1, p0, Ld/g;->b:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 6
    iget v1, p0, Ld/g;->c:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 7
    iget v1, p0, Ld/g;->d:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 8
    iget v1, p0, Ld/g;->f:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 9
    iget v1, p0, Ld/g;->g:I

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 10
    iget p0, p0, Ld/g;->l:I

    const v1, 0xf4240

    div-int/2addr p0, v1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p0}, Ljava/util/GregorianCalendar;->set(II)V

    return-object v0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Ld/g;->f:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Ld/g;->a:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Ld/g;->b:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Ld/g;->c:I

    return p0
.end method

.method public j()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Ld/g;->k:Ljava/util/TimeZone;

    return-object p0
.end method

.method public o()I
    .locals 0

    iget p0, p0, Ld/g;->d:I

    return p0
.end method

.method public q()I
    .locals 0

    iget p0, p0, Ld/g;->g:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ld/g;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
