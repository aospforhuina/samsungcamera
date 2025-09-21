.class public final Ls1/a$b;
.super Ljava/lang/Object;
.source "BadgeDrawable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ls1/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a$b$a;

    invoke-direct {v0}, Ls1/a$b$a;-><init>()V

    sput-object v0, Ls1/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Ls1/a$b;->c:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Ls1/a$b;->d:I

    .line 4
    new-instance v0, Lf2/d;

    sget v1, Lq1/l;->e:I

    invoke-direct {v0, p1, v1}, Lf2/d;-><init>(Landroid/content/Context;I)V

    .line 5
    invoke-virtual {v0}, Lf2/d;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Ls1/a$b;->b:I

    .line 6
    sget v0, Lq1/k;->i:I

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls1/a$b;->g:Ljava/lang/CharSequence;

    .line 8
    sget p1, Lq1/j;->a:I

    iput p1, p0, Ls1/a$b;->k:I

    .line 9
    sget p1, Lq1/k;->k:I

    iput p1, p0, Ls1/a$b;->l:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Ls1/a$b;->n:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 12
    iput v0, p0, Ls1/a$b;->c:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Ls1/a$b;->d:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->a:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->b:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->c:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->d:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->f:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ls1/a$b;->g:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->k:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->m:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->o:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->p:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->q:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->r:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->s:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Ls1/a$b;->t:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Ls1/a$b;->n:Z

    return-void
.end method

.method static synthetic A(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->b:I

    return p0
.end method

.method static synthetic B(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->b:I

    return p1
.end method

.method static synthetic C(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->m:I

    return p0
.end method

.method static synthetic D(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->m:I

    return p1
.end method

.method static synthetic E(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->o:I

    return p0
.end method

.method static synthetic F(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->o:I

    return p1
.end method

.method static synthetic G(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->p:I

    return p0
.end method

.method static synthetic H(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->p:I

    return p1
.end method

.method static synthetic I(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->q:I

    return p0
.end method

.method static synthetic J(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->q:I

    return p1
.end method

.method static synthetic K(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->r:I

    return p0
.end method

.method static synthetic L(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->r:I

    return p1
.end method

.method static synthetic c(Ls1/a$b;)Z
    .locals 0

    iget-boolean p0, p0, Ls1/a$b;->n:Z

    return p0
.end method

.method static synthetic d(Ls1/a$b;Z)Z
    .locals 0

    iput-boolean p1, p0, Ls1/a$b;->n:Z

    return p1
.end method

.method static synthetic e(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->f:I

    return p0
.end method

.method static synthetic f(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->s:I

    return p0
.end method

.method static synthetic g(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->s:I

    return p1
.end method

.method static synthetic i(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->f:I

    return p1
.end method

.method static synthetic j(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->t:I

    return p0
.end method

.method static synthetic o(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->t:I

    return p1
.end method

.method static synthetic q(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->c:I

    return p0
.end method

.method static synthetic s(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->c:I

    return p1
.end method

.method static synthetic t(Ls1/a$b;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ls1/a$b;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic u(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->k:I

    return p0
.end method

.method static synthetic v(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->l:I

    return p0
.end method

.method static synthetic w(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->d:I

    return p0
.end method

.method static synthetic x(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->d:I

    return p1
.end method

.method static synthetic y(Ls1/a$b;)I
    .locals 0

    iget p0, p0, Ls1/a$b;->a:I

    return p0
.end method

.method static synthetic z(Ls1/a$b;I)I
    .locals 0

    iput p1, p0, Ls1/a$b;->a:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Ls1/a$b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Ls1/a$b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Ls1/a$b;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Ls1/a$b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Ls1/a$b;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Ls1/a$b;->g:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Ls1/a$b;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Ls1/a$b;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Ls1/a$b;->o:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Ls1/a$b;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget p2, p0, Ls1/a$b;->q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Ls1/a$b;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Ls1/a$b;->s:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Ls1/a$b;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget-boolean p0, p0, Ls1/a$b;->n:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
