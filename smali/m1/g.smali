.class public final Lm1/g;
.super Lc1/a;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm1/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/v;

    invoke-direct {v0}, Lm1/v;-><init>()V

    sput-object v0, Lm1/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Lc1/a;-><init>()V

    iput-boolean p1, p0, Lm1/g;->a:Z

    iput-boolean p2, p0, Lm1/g;->b:Z

    iput-boolean p3, p0, Lm1/g;->c:Z

    iput-boolean p4, p0, Lm1/g;->d:Z

    iput-boolean p5, p0, Lm1/g;->f:Z

    iput-boolean p6, p0, Lm1/g;->g:Z

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->g:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->c:Z

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->d:Z

    return p0
.end method

.method public g()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->a:Z

    return p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->f:Z

    return p0
.end method

.method public j()Z
    .locals 0

    iget-boolean p0, p0, Lm1/g;->b:Z

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lc1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lm1/g;->g()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lm1/g;->j()Z

    move-result v0

    const/4 v1, 0x2

    .line 3
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lm1/g;->e()Z

    move-result v0

    const/4 v1, 0x3

    .line 4
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lm1/g;->f()Z

    move-result v0

    const/4 v1, 0x4

    .line 5
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lm1/g;->i()Z

    move-result v0

    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, v0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    invoke-virtual {p0}, Lm1/g;->d()Z

    move-result p0

    const/4 v0, 0x6

    .line 7
    invoke-static {p1, v0, p0}, Lc1/c;->c(Landroid/os/Parcel;IZ)V

    .line 8
    invoke-static {p1, p2}, Lc1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
