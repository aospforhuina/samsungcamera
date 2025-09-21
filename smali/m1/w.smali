.class public final Lm1/w;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm1/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/x;

    invoke-direct {v0}, Lm1/x;-><init>()V

    sput-object v0, Lm1/w;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIJJ)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lm1/w;->a:I

    iput p2, p0, Lm1/w;->b:I

    iput-wide p3, p0, Lm1/w;->c:J

    iput-wide p5, p0, Lm1/w;->d:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lm1/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lm1/w;

    iget v0, p0, Lm1/w;->a:I

    .line 3
    iget v2, p1, Lm1/w;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lm1/w;->b:I

    iget v2, p1, Lm1/w;->b:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lm1/w;->c:J

    iget-wide v4, p1, Lm1/w;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lm1/w;->d:J

    iget-wide p0, p1, Lm1/w;->d:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lm1/w;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lm1/w;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lm1/w;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lm1/w;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lb1/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lm1/w;->a:I

    iget v1, p0, Lm1/w;->b:I

    iget-wide v2, p0, Lm1/w;->d:J

    iget-wide v4, p0, Lm1/w;->c:J

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v6, 0x93

    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "NetworkLocationStatus: Wifi status: "

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Cell status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " elapsed time NS: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " system time ms: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lm1/w;->a:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lm1/w;->b:I

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lm1/w;->c:J

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v0, v1}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lm1/w;->d:J

    const/4 p0, 0x4

    .line 5
    invoke-static {p1, p0, v0, v1}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    .line 6
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
