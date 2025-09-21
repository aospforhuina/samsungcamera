.class public Lb1/n;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:J

.field private final f:J

.field private final g:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/i0;

    invoke-direct {v0}, Lb1/i0;-><init>()V

    sput-object v0, Lb1/n;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lb1/n;->a:I

    iput p2, p0, Lb1/n;->b:I

    iput p3, p0, Lb1/n;->c:I

    iput-wide p4, p0, Lb1/n;->d:J

    iput-wide p6, p0, Lb1/n;->f:J

    iput-object p8, p0, Lb1/n;->g:Ljava/lang/String;

    iput-object p9, p0, Lb1/n;->k:Ljava/lang/String;

    iput p10, p0, Lb1/n;->l:I

    iput p11, p0, Lb1/n;->m:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lb1/n;->a:I

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lb1/n;->b:I

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget v0, p0, Lb1/n;->c:I

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lb1/n;->d:J

    const/4 v2, 0x4

    .line 5
    invoke-static {p1, v2, v0, v1}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lb1/n;->f:J

    const/4 v2, 0x5

    .line 6
    invoke-static {p1, v2, v0, v1}, Lc1/c;->i(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lb1/n;->g:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v1, v0, v2}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lb1/n;->k:Ljava/lang/String;

    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, v0, v2}, Lc1/c;->k(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lb1/n;->l:I

    const/16 v1, 0x8

    .line 9
    invoke-static {p1, v1, v0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget p0, p0, Lb1/n;->m:I

    const/16 v0, 0x9

    .line 10
    invoke-static {p1, v0, p0}, Lc1/c;->g(Landroid/os/Parcel;II)V

    .line 11
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
