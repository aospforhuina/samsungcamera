.class final Lcom/google/android/material/datepicker/l;
.super Ljava/lang/Object;
.source "Month.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/datepicker/l;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Calendar;

.field final b:I

.field final c:I

.field final d:I

.field final f:I

.field final g:J

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/datepicker/l$a;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/l$a;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 3
    invoke-static {p1}, Lcom/google/android/material/datepicker/s;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/datepicker/l;->b:I

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/l;->c:I

    const/4 v1, 0x7

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/datepicker/l;->d:I

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->f:I

    .line 8
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/l;->g:J

    return-void
.end method

.method static t(II)Lcom/google/android/material/datepicker/l;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/s;->i()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 4
    new-instance p0, Lcom/google/android/material/datepicker/l;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static u(J)Lcom/google/android/material/datepicker/l;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/s;->i()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    new-instance p0, Lcom/google/android/material/datepicker/l;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static v()Lcom/google/android/material/datepicker/l;
    .locals 2

    new-instance v0, Lcom/google/android/material/datepicker/l;

    invoke-static {}, Lcom/google/android/material/datepicker/s;->g()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method


# virtual methods
.method A()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method B(I)Lcom/google/android/material/datepicker/l;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/s;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 3
    new-instance p1, Lcom/google/android/material/datepicker/l;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/l;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method C(Lcom/google/android/material/datepicker/l;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p1, Lcom/google/android/material/datepicker/l;->c:I

    iget v1, p0, Lcom/google/android/material/datepicker/l;->c:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/google/android/material/datepicker/l;->b:I

    iget p0, p0, Lcom/google/android/material/datepicker/l;->b:I

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Gregorian calendars are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/material/datepicker/l;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/l;->s(Lcom/google/android/material/datepicker/l;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/l;

    .line 3
    iget v1, p0, Lcom/google/android/material/datepicker/l;->b:I

    iget v3, p1, Lcom/google/android/material/datepicker/l;->b:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/datepicker/l;->c:I

    iget p1, p1, Lcom/google/android/material/datepicker/l;->c:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/google/android/material/datepicker/l;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/android/material/datepicker/l;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public s(Lcom/google/android/material/datepicker/l;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2
    iget p0, p0, Lcom/google/android/material/datepicker/l;->d:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/google/android/material/datepicker/l;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p0, p0, Lcom/google/android/material/datepicker/l;->b:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method x(I)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/s;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 3
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method y(J)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/s;->d(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x5

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method z(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/datepicker/e;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/l;->k:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->k:Ljava/lang/String;

    return-object p0
.end method
