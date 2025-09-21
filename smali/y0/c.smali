.class public Ly0/c;
.super Lc1/a;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly0/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly0/m;

    invoke-direct {v0}, Ly0/m;-><init>()V

    sput-object v0, Ly0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Ly0/c;->a:Ljava/lang/String;

    iput p2, p0, Ly0/c;->b:I

    iput-wide p3, p0, Ly0/c;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Ly0/c;->a:Ljava/lang/String;

    iput-wide p2, p0, Ly0/c;->c:J

    const/4 p1, -0x1

    iput p1, p0, Ly0/c;->b:I

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly0/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e()J
    .locals 4

    iget-wide v0, p0, Ly0/c;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget p0, p0, Ly0/c;->b:I

    int-to-long v0, p0

    :cond_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Ly0/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ly0/c;

    .line 3
    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Ly0/c;->e()J

    move-result-wide v2

    invoke-virtual {p1}, Ly0/c;->e()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ly0/c;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lb1/o;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lb1/o;->c(Ljava/lang/Object;)Lb1/o$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lb1/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb1/o$a;

    .line 3
    invoke-virtual {p0}, Ly0/c;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "version"

    invoke-virtual {v0, v1, p0}, Lb1/o$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb1/o$a;

    .line 4
    invoke-virtual {v0}, Lb1/o$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Ly0/c;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Ly0/c;->b:I

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 5
    invoke-virtual {p0}, Ly0/c;->e()J

    move-result-wide v0

    const/4 p0, 0x3

    .line 6
    invoke-static {p1, p0, v0, v1}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    .line 7
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
