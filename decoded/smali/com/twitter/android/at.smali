.class final Lcom/twitter/android/at;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field private synthetic c:Lcom/twitter/android/do;


# direct methods
.method public constructor <init>(Lcom/twitter/android/do;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/at;->c:Lcom/twitter/android/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0e0008

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/at;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e002d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/at;->b:Landroid/widget/TextView;

    return-void
.end method
