.class public Lcom/twitter/android/widget/Navbar;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Lcom/twitter/android/widget/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f010016

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/Navbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    return-void
.end method

.method private c(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/twitter/android/widget/g;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/widget/g;-><init>(Landroid/view/View;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/g;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/g;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/widget/g;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final varargs a(I[I)V
    .locals 4

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p2, v1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/widget/f;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/f;

    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->a:Ljava/util/HashMap;

    const v1, 0x7f0e001c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/g;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/twitter/android/widget/g;->a:Landroid/view/View;

    check-cast p0, Landroid/widget/ImageButton;

    const v0, 0x7f02004c

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/widget/Navbar;->b:Lcom/twitter/android/widget/f;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/widget/f;->a_(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x7f0e001a

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0e003d

    const v1, 0x7f0e003c

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/Navbar;->c(II)V

    const v0, 0x7f0e001c

    const v1, 0x7f0e003e

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/widget/Navbar;->c(II)V

    return-void
.end method
