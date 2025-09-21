.class public Lb1/r;
.super Lc1/a;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/s0;

    invoke-direct {v0}, Lb1/s0;-><init>()V

    sput-object v0, Lb1/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/r;->a:I

    iput-boolean p2, p0, Lb1/r;->b:Z

    iput-boolean p3, p0, Lb1/r;->c:Z

    iput p4, p0, Lb1/r;->d:I

    iput p5, p0, Lb1/r;->f:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Lb1/r;->d:I

    return p0
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lb1/r;->f:I

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lb1/r;->b:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lb1/r;->c:Z

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lb1/r;->a:I

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 2
    invoke-virtual {p0}, Lb1/r;->i()I

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 4
    invoke-virtual {p0}, Lb1/r;->f()Z

    move-result v0

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 6
    invoke-virtual {p0}, Lb1/r;->g()Z

    move-result v0

    const/4 v1, 0x3

    .line 7
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 8
    invoke-virtual {p0}, Lb1/r;->d()I

    move-result v0

    const/4 v1, 0x4

    .line 9
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 10
    invoke-virtual {p0}, Lb1/r;->e()I

    move-result p0

    const/4 v0, 0x5

    .line 11
    invoke-static {p1, v0, p0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 12
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
