.class public final Lb1/z0;
.super Lc1/a;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb1/z0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Ly0/c;

.field c:I

.field d:Lb1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb1/a1;

    invoke-direct {v0}, Lb1/a1;-><init>()V

    sput-object v0, Lb1/z0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc1/a;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;[Ly0/c;ILb1/f;)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-object p1, p0, Lb1/z0;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lb1/z0;->b:[Ly0/c;

    iput p3, p0, Lb1/z0;->c:I

    iput-object p4, p0, Lb1/z0;->d:Lb1/f;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lb1/z0;->a:Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, v3}, Lc1/c;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lb1/z0;->b:[Ly0/c;

    const/4 v2, 0x2

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->m(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget v1, p0, Lb1/z0;->c:I

    const/4 v2, 0x3

    .line 4
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lb1/z0;->d:Lb1/f;

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, p0, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 6
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
