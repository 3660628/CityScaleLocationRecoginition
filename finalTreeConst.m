    fprintf('Clustering');
    allDescriptors=cell2mat([informativeLocations(:).descriptors]);
    disp(datestr(datetime('now')));
    tic;
    branchFactor=8;
    depth=6;
    nLeaves=branchFactor^depth;
    [tree,asgn]=vl_hikmeans(allDescriptors,branchFactor,nLeaves,'method','elkan');
    cluster_time=toc
    filename='finalTree';
    save(filename,'tree','asgn');