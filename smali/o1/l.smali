.class public final Lo1/l;
.super Lc1/a;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo1/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:Ly0/a;

.field private final c:Lb1/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo1/m;

    invoke-direct {v0}, Lo1/m;-><init>()V

    sput-object v0, Lo1/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILy0/a;Lb1/l0;)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput p1, p0, Lo1/l;->a:I

    iput-object p2, p0, Lo1/l;->b:Ly0/a;

    iput-object p3, p0, Lo1/l;->c:Lb1/l0;

    return-void
.end method


# virtual methods
.method public final d()Ly0/a;
    .locals 0

    iget-object p0, p0, Lo1/l;->b:Ly0/a;

    return-object p0
.end method

.method public final e()Lb1/l0;
    .locals 0

    iget-object p0, p0, Lo1/l;->c:Lb1/l0;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lo1/l;->a:I

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v1}, Lc1/c;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lo1/l;->b:Ly0/a;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p0, p0, Lo1/l;->c:Lb1/l0;

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, p0, p2, v3}, Lc1/c;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
