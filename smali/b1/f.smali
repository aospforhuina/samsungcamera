.class public Lb1/f;
.super Lc1/a;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lb1/r;

.field private final b:Z

.field private final c:Z

.field private final d:[I

.field private final f:I

.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/b1;

    invoke-direct {v0}, Lb1/b1;-><init>()V

    sput-object v0, Lb1/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lb1/r;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Lb1/f;->a:Lb1/r;

    iput-boolean p2, p0, Lb1/f;->b:Z

    iput-boolean p3, p0, Lb1/f;->c:Z

    iput-object p4, p0, Lb1/f;->d:[I

    iput p5, p0, Lb1/f;->f:I

    iput-object p6, p0, Lb1/f;->g:[I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Lb1/f;->f:I

    return p0
.end method

.method public e()[I
    .locals 0

    iget-object p0, p0, Lb1/f;->d:[I

    return-object p0
.end method

.method public f()[I
    .locals 0

    iget-object p0, p0, Lb1/f;->g:[I

    return-object p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lb1/f;->b:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lb1/f;->c:Z

    return p0
.end method

.method public final j()Lb1/r;
    .locals 0

    iget-object p0, p0, Lb1/f;->a:Lb1/r;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lb1/f;->a:Lb1/r;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-virtual {p0}, Lb1/f;->g()Z

    move-result p2

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 5
    invoke-virtual {p0}, Lb1/f;->i()Z

    move-result p2

    const/4 v1, 0x3

    .line 6
    invoke-static {p1, v1, p2}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 7
    invoke-virtual {p0}, Lb1/f;->e()[I

    move-result-object p2

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, v1, p2, v3}, Lc1/c;->h(Landroid/os/Parcel;I[IZ)V

    .line 9
    invoke-virtual {p0}, Lb1/f;->d()I

    move-result p2

    const/4 v1, 0x5

    .line 10
    invoke-static {p1, v1, p2}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 11
    invoke-virtual {p0}, Lb1/f;->f()[I

    move-result-object p0

    const/4 p2, 0x6

    .line 12
    invoke-static {p1, p2, p0, v3}, Lc1/c;->h(Landroid/os/Parcel;I[IZ)V

    .line 13
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
